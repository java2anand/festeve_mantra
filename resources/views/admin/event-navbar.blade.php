<nav class="navbar navbar-default">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li class="<?= (isset($current_tab) && $current_tab=='event_details') ? 'active' :'';  ?>"><a href="{{ route('admin.event_add',$event_id)}}">Event Details</a></li>

            <li class='<?= (isset($current_tab) && $current_tab=='event_schedule') ? 'active' :'';  ?>'><a href="{{ route('admin.event_add_schedule',$event_id)}}">Event Schedule</a></li>

            <li class='<?= (isset($current_tab) && $current_tab=='event_social') ? 'active' :'';  ?>'><a href="{{ route('admin.event_add_social',$event_id)}}">Event Social Link</a></li>

            <li class='<?= (isset($current_tab) && $current_tab=='event_address') ? 'active' :'';  ?>'><a href="{{ route('admin.event_add_address',$event_id)}}">Event Address</a></li>

            <li class='<?= (isset($current_tab) && $current_tab=='event_seo') ? 'active' :'';  ?>'><a href="{{ route('admin.event_add_seo',$event_id)}}">Event Seo</a></li>

        </ul>
    </div>
</nav>