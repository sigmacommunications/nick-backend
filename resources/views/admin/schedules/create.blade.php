@extends('layouts.app')

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-9">
            <h1>Create Schedule</h1>
          </div>
          <div class="col-sm-3">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Create Schedule</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
    <div class="container-fluid">

        <!-- Create Schedule Form -->
        <div class="row">
          <div class="col-12">
              <div class="card">
                  <div class="card-header">
                    <h4 class="card-title">Schedule Details</h4>
                  </div>
                  <div class="card-body">
                    <form action="{{ route('schedules.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <!-- Schedule Name -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name" class="font-weight-bold">Schedule Name:</label>
                                    <input type="text" class="form-control" name="name" id="name" required>
                                </div>
                            </div>

                            <!-- Schedule Time -->
                            <div class="form-group">
                                <label for="start_time">Start Time</label>
                                <input type="time" class="form-control" name="start_time" required>
                            </div>

                            <div class="form-group">
                                <label for="end_time">End Time</label>
                                <input type="time" class="form-control" name="end_time" required>
                            </div>

                            <!-- Schedule Image -->
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="image" class="font-weight-bold">Schedule Image:</label>
                                    <input type="file" class="form-control-file" name="image" id="image" required>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <div class="col-md-12 text-center mt-4">
                                <button type="submit" class="btn btn-success btn-lg">Save Schedule</button>
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

<!-- Custom Styles -->
<style>
  .card-header {
      background-color: #f8f9fa;
      border-bottom: 1px solid #ddd;
  }

  .card-body {
      background-color: #ffffff;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  .form-group label {
      font-size: 16px;
      color: #555;
  }

  .form-control {
      border-radius: 0.375rem;
      border: 1px solid #ccc;
      box-shadow: none;
      padding: 12px 15px;
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

  .form-control-file {
      padding: 0;
  }

  .col-md-6 {
      margin-bottom: 20px;
  }

  /* Add some space at the top of the page */
  .content-wrapper {
      padding-top: 20px;
  }

  .breadcrumb {
      background-color: #f8f9fa;
      font-size: 14px;
  }
</style>

