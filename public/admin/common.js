var baseUrl = getRootUrl();
//alert(baseUrl);
$(document).ready(function () {
    $.ajaxSetup({
        headers: { 'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content') }
    });

    //form changes alert before leaving the page
    formmodified = 0;
    $('#category_form, #eventtype_form, #newsletter_form, #update_basic_frm, #update_pass_frm, #site_setting').change(function () {
        formmodified = 1;
    });
    $("input[type=submit], button[type=submit]").click(function () {
        formmodified = 0;
    });
    $(window).bind("beforeunload", function (event) {
        if (formmodified == 1) {
            return "You have some unsaved changes";
        }
    });


    $(document).on('click', '.editButton', function () {
        $(this).closest('.view_info').hide();
        $(this).closest('.view_info').next().show();
    });
    $(document).on('click', '.cancel_btn', function () {
        $(this).closest('.edit_info').hide();
        $(this).closest('.edit_info').prev().show();
    });

    $(document).on('change', '.check_type', function () {
        var fileExtension = ['jpeg', 'jpg', 'png'];
        if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
            $(this).next('.error_type').show().html('Formats : ' + fileExtension.join(', '));
            $(this).val('');
        } else {
            $(this).next('.error_type').hide();
        }
    });
    $("#img_form").validate({
        errorElement: 'span',
        highlight: function (element) {
            $(element).closest('.form-control').removeClass('has-error');
            $(element).closest('div').removeClass('fg-line');
        },
        submitHandler: function () {
            $.ajax({
                type: "POST",
                url: baseUrl + 'admin/upload_image',
                processData: false,
                contentType: false,
                data: new FormData($('#img_form')[0]),
                beforeSend: function () {
                    $.blockUI({
                        message: '<h4>Processing!</h4>'
                    });
                },
                complete: function () {
                    $.unblockUI();
                },
                success: function (data) {
                    if (data.status == 'true') {
                        window.location.reload();
                    } else {
                        window.setTimeout(function () {
                            $.growl.error({title: "Image Upload", message: "Some error occurred!", size: 'large'});
                        }, 1000);
                    }
                }
            });
        }
    });


    $("#login_frm").validate({
        errorElement: 'span',
        rules: {
            user_email: {
                required: true,
                email: true,
            },
            user_pass: "required"
        },
        messages: {
            user_email: {
                required: "Please enter email Id.",
                email: "Please Enter Valid Email",
            },
            user_pass: "Please enter password."
        },
        submitHandler: function (form) {
            $('#loginBtn').attr('disabled', 'disabled');
            $("#loginBtn").text('Please wait.');
            if ($.browser.safari) {
                form.action += '?t=' + new Date().getTime();
            }
            form.submit();
        }
    });


    $("#forget_pass_frm").validate({
        errorElement: 'span',
        rules: {
            forget_email: {
                required: true,
                email: true,
            },
        },
        messages: {
            forget_email: {
                required: "Please enter email Id.",
                email: "Please Enter Valid Email",
            },
        },
        submitHandler: function (form) {
            $('#frgtBtn').attr('disabled', 'disabled');
            $("#frgtBtn").text('Please wait.');
            if ($.browser.safari) {
                form.action += '?t=' + new Date().getTime();
            }
            form.submit();
        }
    });

    jQuery.validator.addMethod("lettersonly", function (value, element) {
        return this.optional(element) || /^[a-z]+$/i.test(value);
    }, "Letters only please");
    $.validator.addMethod("validPhone", function (value, element)
    {
        return this.optional(element) || /^[6-9][0-9]{9}$/.test(value);
    }, "Valid Number only please");

    $("#register_frm").validate({
        errorElement: 'span',
        rules: {
            first_name: {
                required: true,
                lettersonly: true
            },
            last_name: {
                required: true,
                lettersonly: true
            },
            email_addr: {
                required: true,
                email: true
            },
            phone_num: {
                required: true,
                validPhone: true,
                minlength: 10,
                maxlength: 10
            },
            user_password: {
                required: true,
                minlength: 6,
            },
            confirm_password: {
                required: true,
                equalTo: "#user_password",
            },
            terms: {
                required: true
            }
        },
        messages: {
            first_name: {
                required: "Enter first name.",
            },
            last_name: {
                required: "Enter last name.",
            },
            email_addr: {
                required: "Enter email Id.",
                email: "Enter valid email",
            },
            phone_num: {
                required: "Enter phone number.",
            },
            user_password: {
                required: "Enter password.",
            },
            confirm_password: {
                required: "Enter confirm password.",
                equalTo: "Enter same password again",
            },
        },
        errorPlacement: function (error, element) {
            if (element.attr("id") == "terms") {
                error.insertAfter(element.closest('.icheck'));
            } else {
                error.insertAfter(element);
            }
        },
        submitHandler: function (form) {
            $('#rgstrBtn').attr('disabled', 'disabled');
            $("#rgstrBtn").text('Please wait.');
            if ($.browser.safari) {
                form.action += '?t=' + new Date().getTime();
            }
            form.submit();
        }
    });


    $("#reset_pass_frm").validate({
        errorElement: 'span',
        rules: {
            new_pass: {
                required: true,
                minlength: 6,
            },
            confirm_pass: {
                required: true,
                equalTo: "#new_pass",
            },
        },
        messages: {
            confirm_pass: {
                equalTo: "Enter same password again",
            },
        },
        submitHandler: function (form) {
            $('#resetPassBtn').attr('disabled', 'disabled');
            $("#resetPassBtn").text('Please wait.');
            if ($.browser.safari) {
                form.action += '?t=' + new Date().getTime();
            }
            form.submit();
        }
    });


    $(document).on('click', '.reg_box', function () {
        $('.authen_section').hide();
        $('#register-box').show();
    });
    $(document).on('click', '.login_box', function () {
        $('.authen_section').hide();
        $('#login-box').show();
    });
    $(document).on('click', '.forget_box', function () {
        $('.authen_section').hide();
        $('#forget-box').show();
    });
    $(document).on('change', '#update_basic_frm #state,#event_add_address_form #state', function () {
        $.ajax({
            url: baseUrl + "admin/get_city_list",
            crossDomain: true,
            type: "POST",
            data: {'state_id': $(this).val()},
            dataType: 'json',
            success: function (response) {
                if (response.success == true){
                    $('#update_basic_frm #city,#event_add_address_form #city').empty();
                    $('#update_basic_frm #city,#event_add_address_form #city').append('<option value="">Select City</option>');
                    $.each(response.city_info, function (item, i) {
                        $('#update_basic_frm #city,#event_add_address_form #city').append('<option value="' + i.city_id + '">' + i.city_name + '</option>');
                    });
                }
            }
        });
    });
});

function areyousure() {
    if (confirm("Do you want to delete this?\n Note: This data will be deleted from everywhere and can not be rollback!")) {

    } else {
        return false;
    }
}
function getRootUrl() {
    var pathparts = location.pathname.split('/');
    if (location.host == 'localhost') {
        var url = location.origin + '/' + pathparts[1].trim('/') + '/';
    } else {
        var url = location.origin + '/';
    }
    return url;
}