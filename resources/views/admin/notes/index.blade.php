@extends('layouts.app')

@section('content')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-10">
                        <h1>Notes</h1>
                    </div>
                    <div class="col-sm-2">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Notes</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <a class="btn btn-success" href="{{ route('notes.create') }}"><i class="fas fa-plus-circle"></i> New Notes </a>
                              </div>
                            <div class="card-body">
                                <table id="example" class="table table-striped" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>S.N</th>
                                            <th>Title</th>
                                            <th>Place</th>
                                            <th>Image</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if ($notes)
                                        @foreach ($notes as $key => $note)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ $note->title }}</td>
                                                <td>{{ $note->place->title }}</td>
                                                <td><a href="{{ asset($note->image) ?? '' }}" target="blank">{{ basename($note->image) ?? 'null' }}</a></td>
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
    </div>
@endsection
