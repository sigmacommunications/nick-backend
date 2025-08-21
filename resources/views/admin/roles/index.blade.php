@extends('layouts.app')

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h1>Roles</h1>
          </div>
          <div class="col-sm-2">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Roles</li>
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
                <h3 class="card-title">Role List</h3>
                <!-- Create New Role Button -->
                @can('role-create')
                <a class="btn btn-success float-right" href="{{ route('roles.create') }}">
                  <i class="fas fa-plus-circle"></i> Create New Role
                </a>
                @endcan
              </div>

              <div class="card-body">
                <table id="example" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>S.No</th>
                      <th>Roles</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    @if($roles->count() > 0)
                    @foreach($roles as $key => $role)
                    <tr>
                        <td>{{ $key + 1 }}</td>
                        <td>{{ $role->name }}</td>
                        <td class="text-center">
                          <div class="btn-group" role="group" aria-label="Action Buttons">
                            @can('role-edit')
                            <a class="btn btn-warning btn-sm" href="{{ route('roles.edit', $role->id) }}">
                              <i class="fas fa-edit"></i> Edit
                            </a>
                            @endcan
                            <!-- Optionally, add a delete button or other actions -->
                          </div>
                        </td>
                    </tr>
                    @endforeach
                    @else
                    <tr>
                      <td colspan="3" class="text-center">No roles found</td>
                    </tr>
                    @endif
                  </tbody>
                  <tfoot>
                    <tr>
                      <th>S.No</th>
                      <th>Roles</th>
                      <th>Action</th>
                    </tr>
                  </tfoot>
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

<!-- Pagination -->
{!! $roles->render() !!}

@endsection
