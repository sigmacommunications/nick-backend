@extends('layouts.app')


@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Schedules</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Schedules</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif -->
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Schedules List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-header">
                <a class="btn btn-success" href="{{ route('schedules.create') }}"><i class="fas fa-plus-circle"></i> Create Schedule</a>
              </div>

              <div class="card-body">
                <table id="example" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Image</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  @if($schedules)
                  @php
                  $id =1;
                  @endphp
                  @foreach($schedules as $key =>  $schedule)
                  <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $schedule->name }}</td>
                    <td>{{ $schedule->start_time }}</td>
                    <td>{{ $schedule->end_time }}</td>
                    <td><img src="{{ asset('storage/' . $schedule->image) }}" width="50" height="50" /></td>
                    <td>
                        <a class="btn btn-warning" href="{{ route('schedules.show',$schedule->id) }}">Show</a>
                        <a class="btn btn-primary" href="{{ route('schedules.edit',$schedule->id) }}">Edit</a>
                          {!! Form::open(['method' => 'DELETE','route' => ['schedules.destroy', $schedule->id],'style'=>'display:inline']) !!}
                              {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                          {!! Form::close() !!}
                      </td>

			      </tr>
                  @endforeach
                  @endif
                  </tbody>

                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

@endsection
