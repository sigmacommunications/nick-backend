@extends('layouts.app')

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-9">
            <h1>Edit Schedule</h1>
          </div>
          <div class="col-sm-3">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Schedule/Edit</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
    <div class="container-fluid">
        <!-- Edit Schedule Form -->
        <div class="row">
          <div class="col-12">
              <div class="card">
                  <div class="card-header text-center">
                    <h4 class="card-title">Edit Schedule</h4>
                  </div>
                  <div class="card-body">
                    <form action="{{ route('schedules.update', $schedule->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="row">
                            <!-- Schedule Name -->
                            <div class="col-md-6 mb-3">
                                <div class="form-group">
                                    <label for="name" class="font-weight-bold">Schedule Name:</label>
                                    <input type="text" class="form-control" name="name" id="name" value="{{ $schedule->name }}" required>
                                </div>
                            </div>

                            <!-- Schedule Time -->
                            <div class="form-group">
                                <label for="start_time">Start Time</label>
                                <input type="time" class="form-control" name="start_time" value="{{ $schedule->start_time }}" required>
                            </div>

                            <div class="form-group">
                                <label for="end_time">End Time</label>
                                <input type="time" class="form-control" name="end_time" value="{{ $schedule->end_time }}" required>
                            </div>

                            <!-- Display Current Image -->
                            <div class="col-md-12 mb-3">
                                <div class="form-group">
                                    <label for="current-image" class="font-weight-bold">Current Image:</label>
                                    <div class="text-center">
                                        @if($schedule->image)
                                            <img src="{{ asset('storage/'.$schedule->image) }}" alt="Current Schedule Image" class="img-fluid rounded shadow" style="max-width: 250px; height: auto;">
                                        @else
                                            <p>No image uploaded.</p>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <!-- Upload New Image -->
                            <div class="col-md-12 mb-3">
                                <div class="form-group">
                                    <label for="image" class="font-weight-bold">Upload New Image (Optional):</label>
                                    <input type="file" class="form-control-file" name="image" id="image">
                                    <small class="form-text text-muted">Leave blank to keep the current image.</small>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <div class="col-md-12 text-center mt-4">
                                <button type="submit" class="btn btn-success btn-lg">Update Schedule</button>
                            </div>
                        </div>
                    </form>
                  </div>
              </div>
          </div>
        </div>
    </div>
</section>

</div>
@endsection


<style>
  .card-header {
      background-color: #f8f9fa;
      border-bottom: 1px solid #ddd;
      text-align: center;
      padding: 20px;
  }

  .card-body {
      background-color: #ffffff;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      padding: 30px;
  }

  .form-group label {
      font-size: 16px;
      color: #555;
  }

  .form-control {
      border-radius: 0.375rem;
      border: 1px solid #ccc;
      padding: 12px 15px;
      font-size: 14px;
  }

  .form-control-file {
      padding: 10px 15px;
      border-radius: 0.375rem;
      font-size: 14px;
      background-color: #f8f9fa;
  }

  .btn {
      padding: 10px 25px;
      font-size: 16px;
      font-weight: bold;
  }

  .btn-success {
      background-color: #28a745;
      border-color: #28a745;
  }

  .btn-success:hover {
      background-color: #218838;
      border-color: #1e7e34;
  }

  .col-md-6, .col-md-12 {
      margin-bottom: 20px;
  }

  .breadcrumb {
      background-color: #f8f9fa;
      font-size: 14px;
  }

  .content-wrapper {
      padding-top: 20px;
  }

  /* Image Styling */
  .img-fluid {
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  .text-center {
      margin-bottom: 20px;
  }
</style>

