@extends('layouts.app')


@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-9">
            <h1>Edit Package</h1>
          </div>
          <div class="col-sm-3">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Edit Package</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
    <div class="container-fluid">
        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
        @endif
        <div class="row">
          <div class="col-12">
              <div class="card">
                  <div class="card-header">
                    <form action="{{ route('subscription.update', $plan->id) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" name="name" class="form-control" value="{{ $plan->name }}" required>
                        </div>
                        <div class="form-group">
                            <label for="price">Price:</label>
                            <input type="number" name="price" class="form-control" value="{{ $plan->price }}" step="0.01" required>
                        </div>
                        <div class="form-group">
                            <label for="type">Type:</label>
                            <select name="type" class="form-control" required>
                                <option value="monthly" {{ $plan->type == 'monthly' ? 'selected' : '' }}>Monthly</option>
                                <option value="yearly" {{ $plan->type == 'yearly' ? 'selected' : '' }}>Yearly</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="description">Description:</label>
                            <textarea name="description" class="form-control" required>{{ $plan->description }}</textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </form>
                  </div>
              </div>
          </div>
        </div>
    </div>
</section>

</div>
@endsection
