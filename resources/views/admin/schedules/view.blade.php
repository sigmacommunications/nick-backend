
<?php $schedules = DB::table('schedules')->latest()->take(5)->get();
?>
    @foreach($schedules as $key => $sch)
        <div class="rightbar-hover">
            <div class="rightbar-inner">
                <img src="{{ asset('storage/' . $sch->image) }}" />
                <div>
                    <a href="#" class="rigt1-a">{{ $sch->name }}</a>
                    <p class="rigt1-b">{{ $sch->start_time }} - {{ $sch->end_time }}</p>
                </div>
            </div>
            <a href="#" class="right-arrow"><i class="fa-solid fa-chevron-right"></i></a>
        </div>
    @endforeach

