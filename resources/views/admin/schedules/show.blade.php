@extends('layouts.app')

@section('content')
<div class="content-wrapper">


    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-footer text-center">Schedule Details
                                <a href="{{ route('schedules.index') }}" class="btn btn-secondary btn-lg">
                                    <i class="fa fa-arrow-left"></i> Back
                                </a>
                            </div></h4>

                        </div>

                        <div class="card-body">
                            <p style="color:black;"><strong>Name:</strong> {{ $schedule->name }}</p>
                            <p style="color:black;"><strong>Start Time:</strong> {{ $schedule->start_time }}</p>
                            <p style="color:black;"><strong>End Time:</strong> {{ $schedule->end_time }}</p>
                            <p><strong>Image:</strong></p>
                            @if($schedule->image)
                                <img src="{{ asset('storage/'.$schedule->image) }}" alt="Schedule Image" class="img-fluid" style="max-width: 200px; height: auto;">
                            @else
                                <p>No image available.</p>
                            @endif
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection


<style>
  .btn-secondary {
      background-color: #6c757d;
      color: #fff;
  }

  .btn-secondary:hover {
      background-color: #5a6268;
      color: #fff;
  }

  .card-footer {
      background-color: #f8f9fa;
  }

  .card-header {
      background-color: #f8f9fa;
      border-bottom: 1px solid #ddd;
  }

  .card-body {
      background-color: #ffffff;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  .img-fluid {
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
</style>

