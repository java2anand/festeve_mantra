@foreach($arr_events as $event)
<div class="listing_page_mid_section_outer">
    <div class="listing_page_mid_section_left" style="background-image:url('{{ asset( 'images/event/'.$event->event_image )}}')">
        <a href="{{ url('event-detail/'.$event->slug )}}"></a>
    </div>
    <div class="listing_page_mid_section_right">
        <p class="listing_mid_category_date">

            <span class="text-left">{{ date('F dS, Y',strtotime($event->start_date)) }} | Delhi</span>
        </p>
        <h3><a href="{{ url('event-detail/'.$event->slug )}}">{{ $event->title }}</a></h3>
        {!! $event->short_description !!}
        <p class="listing_mid_category_link"><a href="{{ url('event-detail/'.$event->slug )}}">View</a></p>
    </div>
</div>
@endforeach

