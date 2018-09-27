<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\EventRequest;
use App\Http\Controllers\Controller;
use App\Model\Event;
use App\Model\EventSpeaker;
use App\Model\EventAddress;
use Illuminate\Support\Facades\DB;
use Image;

class EventController extends Controller {

    public function __construct() {
        $this->middleware('auth:admin');
    }

    public function index(Request $request) {
        $page = 'event_list';
        $search = $request->get('search');
        $field = $request->get('field') != '' ? $request->get('field') : 'id';
        $sort = $request->get('sort') != '' ? $request->get('sort') : 'desc';

        $arrEvent = Event::orderBy($field, $sort)->where('title', 'like', '%' . $search . '%')
            ->paginate(10)->withPath('?search=' . $search . '&field=' . $field . '&sort=' . $sort);
        return view('admin.event_list', compact('arrEvent', 'page','search_term'));
    }

    public function create($id = false) {
        $page = 'add_event';
        $current_tab = 'event_details';
        $event = array();
        $speakers = array();
        $arrCategory = DB::table('categories')->where('status', 1)->get();
        //$arrEventType = DB::table('event_types')->where('status', 1)->get();
        $arr_organisers = DB::table('organisers')->where('status', 1)->get();
        $arr_speakers = DB::table('speakers')->where('status', 1)->get();
        if ($id) {
            $event = DB::table('events')->where('id', $id)->first();
            $selected_speaker = DB::table('event_speakers')->where('event_id', $id)->get()->toArray();
            $speakers = array_column($selected_speaker, 'speaker_id');
            if ($event == null) {
                return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
            }
        }
        //dd($speakers);
        return view('admin.event_add', compact('event', 'page', 'arrCategory', 'current_tab', 'arr_organisers', 'arr_speakers', 'speakers'));
    }

    public function save_event(EventRequest $request, $event_id = false) {
        $event = new Event;
        if ($event_id) {
            $event = Event::find($event_id);
            if ($event == null) {
                return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
            }
        }

        $event->title = !empty($request->title) ? $request->title : '';
        $event->slug = !empty($request->slug) ? $request->slug : '';
        $event->event_category = !empty($request->category_id) ? $request->category_id : '';
        //$event->event_type = !empty($request->event_type_id) ? $request->event_type_id : '';

        $event->start_date = !empty($request->start_date) ? date("Y-m-d", strtotime($request->start_date)) : '';
        $event->end_date = !empty($request->end_date) ? date("Y-m-d", strtotime($request->end_date)) : '';
        $event->start_time = !empty($request->start_time) ? date("H:i:s", strtotime($request->start_time)) : '';
        $event->end_time = !empty($request->end_time) ? date("H:i:s", strtotime($request->end_time)) : '';
        $event->short_description = !empty($request->short_description) ? $request->short_description : '';
        $event->description = !empty($request->description) ? $request->description : '';
        $event->organiser_id = !empty($request->organiser_id) ? $request->organiser_id : '';
        $event->speaker_title = !empty($request->speaker_title) ? $request->speaker_title : '';
        $event->status = $request->status;

        /* Event Top Banner */
        if ($request->hasFile('event_top_banner')) {
            $file = $request->file('event_top_banner');
            $imagename = time() . '.' . $file->getClientOriginalExtension();
            $destinationPath = public_path('/images/event/top_banner');
            $thumb_img = Image::make($file->getRealPath());
            //$thumb_img = Image::make($file->getRealPath())->resize(100, 100);

            //$destinationPath = public_path('/images/event/top_banner');
            //if ($file->move($destinationPath, $imagename)) {
            if ($thumb_img->save($destinationPath . '/' . $imagename, 80)) {
                $prev_image_origi = public_path('images/event/top_banner') . '/' . $request->old_event_top_banner;
                @unlink($prev_image_origi);
            }
            $event->event_top_banner = $imagename;
        } else {
            $event->event_top_banner = (!empty($request->old_event_top_banner)) ? $request->old_event_top_banner : '';
        }
        /* Event Top Banner */
        /*         * **** event image + thumbnail ******** */
        if ($request->hasFile('event_image')) {
            $file = $request->file('event_image');
            $imagename = time() . '.' . $file->getClientOriginalExtension();
            $destinationPath = public_path('/images/event/thumb');
            $thumb_img = Image::make($file->getRealPath())->resize(100, 100);
            $thumb_img->save($destinationPath . '/' . $imagename, 80);

            $destinationPath = public_path('/images/event');
            if ($file->move($destinationPath, $imagename)) {
                $prev_image_origi = public_path('images/event') . '/' . $request->old_event_image;
                $prev_image_thumb = public_path('images/event/thumb') . '/' . $request->old_event_image;

                @unlink($prev_image_origi);
                @unlink($prev_image_thumb);
            }
            $event->event_image = $imagename;
        } else {
            $event->event_image = (!empty($request->old_event_image)) ? $request->old_event_image : '';
        }

        /*         * *** save and get last id ***** */
        $event->save();
        $save_event_id = (isset($event_id) && !empty($event_id)) ? $event_id : $event->id;

        //dd($request);
        /*         * ********** save speaker id will change logic after sometime********* */
        $delete = DB::table('event_speakers')->where('event_id', $save_event_id)->delete();
        if(isset($request->speaker) && count($request->speaker)>0){
            foreach($request->speaker as $v){
                $event_speaker = new EventSpeaker;
                $event_speaker->event_id = $save_event_id;
                $event_speaker->speaker_id = $v;
                $event_speaker->save();
            }
        }

        $request->session()->flash('alert-success', 'Event saved successfully!');
        if ($request->submit == 'go') {
            return redirect('admin/event_add_schedule/' . $save_event_id);
        } else {
            return redirect('admin/event_add/' . $save_event_id);
        }
        return redirect()->route('admin.category_list')->with('alert-success', 'Saved successfully!');
    }

    public function save_schedule(Request $request, $event_id = false) {
        $page = 'add_event';
        $current_tab = 'event_schedule';
        $event_schedules_array = array();
        if (!$event_id) {
            return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
        } else {
            $event_schedules_array = DB::table('event_schedules')->where('event_id', $event_id)->get();
            //dd($event_schedules_array);
        }
        //dd($request);
        if ($request->isMethod('post')) {
            for ($i = 0; $i < count($request->title); $i++) {
                $save_array = array(
                    'event_id' => $event_id,
                    'title' => (!empty($request->title[$i])) ? $request->title[$i] : '',
                    'address' => (!empty($request->address[$i])) ? $request->address[$i] : '',
                    'date' => (!empty($request->event_date[$i])) ? date('Y-m-d', strtotime($request->event_date[$i])) : '',
                    'from_time' => (!empty($request->from_time[$i])) ? date("H:i:s", strtotime($request->from_time[$i])) : '',
                    'to_time' => (!empty($request->to_time[$i])) ? date("H:i:s", strtotime($request->to_time[$i])) : '',
                    'status' => (!empty($request->status[$i])) ? $request->status[$i] : '',
                    'activity' => (!empty($request->activity[$i])) ? $request->activity[$i] : '',
                );

                if ($request->schedule_id[$i] == null) {
                    $save = DB::table('event_schedules')->insert($save_array);
                } else {
                    $save = DB::table('event_schedules')->where('id', $request->schedule_id[$i])->update($save_array);
                }
            }

            $request->session()->flash('alert-success', 'Event schedule saved successfully!');
            if ($request->submit == 'go') {
                return redirect('admin/event_add_social/' . $event_id);
            } else {
                return redirect('admin/event_add_schedule/' . $event_id);
            }
        }

        return view('admin.event_add_schedule', compact('event_schedules_array', 'page', 'current_tab', 'event_id'));
    }

    public function save_social(Request $request, $event_id = false) {
        $page = 'add_event';
        $current_tab = 'event_social';

        if (!$event_id) {
            return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
        } else {
            $event = array();
            $event = DB::table('events')->select('id', 'ticket_url', 'website_url', 'facebook_id', 'twitter_id', 'linked_id', 'instagram_id', 'googleplus_id','youtube_id')->where('id', $event_id)->first();
            if ($event == null) {
                return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
            }
        }

        if ($request->isMethod('post')) {
            $this->validate($request, [
                'ticket_url' => 'required|url',
                    ], [
                'ticket_url.required' => 'Enter ticket url!',
                'ticket_url.url' => 'Enter valid url!',
            ]);

            $update_array = array(
                'ticket_url' => (!empty($request->ticket_url)) ? $request->ticket_url : '',
                'website_url' => (!empty($request->website_url)) ? $request->website_url : '',
                'facebook_id' => (!empty($request->facebook_id)) ? $request->facebook_id : '',
                'twitter_id' => (!empty($request->twitter_id)) ? $request->twitter_id : '',
                'linked_id' => (!empty($request->linked_id)) ? $request->linked_id : '',
                'instagram_id' => (!empty($request->instagram_id)) ? $request->instagram_id : '',
                'googleplus_id' => (!empty($request->googleplus_id)) ? $request->googleplus_id : '',
                'youtube_id' => (!empty($request->youtube_id)) ? $request->youtube_id : '',
            );

            $save = DB::table('events')->where('id', $event_id)->update($update_array);
            $request->session()->flash('alert-success', 'Event social links updated successfully!');
            if ($request->submit == 'go') {
                return redirect('admin/event_add_address/' . $event_id);
            } else {
                return redirect('admin/event_add_social/' . $event_id);
            }
        }

        return view('admin.event_add_social', compact('event', 'page', 'current_tab'));
    }

    public function save_address(Request $request, $event_id = false,$address_id=false) {
        $page = 'add_event';
        $current_tab = 'event_address';
        //get all address saved in db


        if (!$event_id) {
            return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
        } else {
            $event = Event::find($event_id);
            if ($event == null) {
                return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
            }else{
                $event_address = array();
                if($address_id){
                    $event_address = EventAddress::where('id',$address_id)->where('event_id',$event_id)->first();
                    if(empty($event_address)){
                        return redirect()->route('admin.event_add_address',$event_id)->with('alert-danger', 'Event address not found!');
                    }
                }
            }
        }



        if ($request->isMethod('post')) {
            //update all address if primary_address is 1
            if($request->primary_address == 1){
                DB::table('event_addresses')->where('event_id', $event_id)->update(array('primary_address'=>0));
            }

            $save_array = array(
                'event_id' => $event_id,
                'event_location' => (!empty($request->event_location)) ? $request->event_location : '',
                'city' => (!empty($request->city)) ? $request->city : '',
                'state' => (!empty($request->state)) ? $request->state : '',
                'country' => (!empty($request->country)) ? $request->country : '',
                'postal_code' => (!empty($request->postal_code)) ? $request->postal_code : '',
                'latitude' => (!empty($request->latitude)) ? $request->latitude : '',
                'longitude' => (!empty($request->longitude)) ? $request->longitude : '',
                'primary_address' => $request->primary_address,
            );

            if ($request->address_id == null) {
                $save = DB::table('event_addresses')->insert($save_array);
            } else {
                $save = DB::table('event_addresses')->where('id', $request->address_id)->update($save_array);
            }

            $request->session()->flash('alert-success', 'Event address updated successfully!');

            if ($request->submit == 'go') {
                return redirect('admin/event_add_seo/'. $event_id);
            } else {
                return redirect('admin/event_add_address/' . $event_id);
            }
        }
        return view('admin.event_add_address', compact('event', 'page', 'current_tab','event_id','event_address'));
    }


    public function save_seo(Request $request, $event_id = false) {
        $page = 'add_seo';
        $current_tab = 'event_seo';

        if (!$event_id) {
            return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
        } else {
            $event = array();
            $event = Event::find($event_id);
            if ($event == null) {
                return redirect()->route('admin.event_list')->with('alert-danger', 'Event not found!');
            }
        }

        if ($request->isMethod('post')) {
            $save_array = array(
                'event_id' => $event_id,
                'meta_keyword' => (!empty($request->meta_keyword)) ? $request->meta_keyword : '',
                'meta_description' => (!empty($request->meta_description)) ? $request->meta_description : '',
                'page_title' => (!empty($request->page_title)) ? $request->page_title : '',
            );

            if ($request->seo_id == null) {
                $save = DB::table('event_seos')->insert($save_array);
            } else {
                $save = DB::table('event_seos')->where('id', $request->seo_id)->update($save_array);
            }

            $request->session()->flash('alert-success', 'Event address updated successfully!');

            if ($request->submit == 'go') {
                return redirect('admin/event_list');
            } else {
                return redirect('admin/event_add_seo/' . $event_id);
            }
        }
        return view('admin.event_add_seo', compact('event', 'page', 'current_tab','event_id'));
    }

    public function destroy($id) {
        $event = Event::find($id);
        $event->delete();
        return back()->with('alert-success', 'Deleted successfully!');
    }

    public function delete_schedule(Request $request) {
        $row_id = $request->row_id;
        $delete = DB::table('event_schedules')->where('id', $row_id)->delete();
        if ($delete) {
            $result = json_encode(array('status' => 1, 'msg' => 'deleted successfully!'));
        } else {
            $result = json_encode(array('status' => 1, 'msg' => 'some error occurred!'));
        }
        header('Content-Type: application/x-json; charset=utf-8');
        echo $result;
        die;
    }

    public function delete_address(Request $request) {
        $row_id = $request->row_id;
        $delete = DB::table('event_addresses')->where('id', $row_id)->delete();
        if ($delete) {
            $result = json_encode(array('status' => 1, 'msg' => 'deleted successfully!'));
        } else {
            $result = json_encode(array('status' => 1, 'msg' => 'some error occurred!'));
        }
        header('Content-Type: application/x-json; charset=utf-8');
        echo $result;
        die;
    }

    public function event_top_hundred(){
        $page = 'event-top-hundred';
        $arr_event = Event::orderBy('sort_order','ASC')->select('id','title')->where('status',1)->get();

        return view('admin.event_top_hundred', compact('arr_event', 'page'));
    }

    public function update_order(Request $request){

        $arr_order = $request->order;
        if(count($arr_order)>0){
            foreach ($arr_order as $order) {
                DB::table('events')->where('id', $order['id'])->update(['sort_order' => $order['position']]);
            }
        }
        return response('Update Successfully.', 200);
    }

}
