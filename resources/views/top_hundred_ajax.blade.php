@foreach($arr_events as $event)
<div class="col-sm-4 col-xs-12 upcoming_events_items"><!-- upcoming event -->
    <div class="upcoming_item_container">
        <div class="upcoming_item_image">
            <a href="{{ url('event-detail/'.$event->slug)}}">
                @if(isset($event->event_image) && !empty($event->event_image) && file_exists(public_path() . '/images/event/' . $event->event_image))
                <img src="{{ asset( 'images/event/'.$event->event_image)}}" alt="event banner">
                @else
                <img src="{{ asset( 'ws/images/no-image.jpg')}}" alt="event banner">
                @endif
            </a>
        </div>
        <div class="upcoming_item_info {{ ($event->premium == 1) ? 'f_premium' : (($event->premium == 2) ? 'f_favourite' : '')  }}">
            <span class="event_type_icon"><img src="{{asset('images/category/event_image/'.$event->category->event_image)}}"></span>
            <p class="uc_event_name"><a href="{{ url('event-detail/'.$event->slug)}}">{{$event->title}}</a></p>
            <p class="uc_event_date">{{  ($event->start_date != $event->end_date ) ?  date('d M', strtotime($event->start_date)).' - '. date('d M', strtotime($event->end_date)).date(', Y')  : date('d M Y', strtotime($event->start_date))}}</p>

        </div>
    </div>
</div><!-- upcoming event ends -->
@endforeach

