
@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-9">

        <div class="notes">
            <form action="{{ route('notes.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="title">Title:</label>
                    <input type="text" name="title" class="form-control" placeholder="Enter title">
                </div>
                </br>
                <div class="form-group">
                    <label for="place_id">Place:</label>
                    <select name="place_id" class="form-control">
                        <option value="">Select a place</option>
                        @foreach($places as $place)
                            <option value="{{ $place->id }}">{{ $place->title }}</option>
                        @endforeach
                    </select>
                </div>
                </br>
                <div class="form-group">
                    <textarea name="description" class="notepad"  placeholder="Enter description"></textarea>
                </div>
                </br>
                <div class="form-group">
                    <label for="image">Image:</label>
                    <input type="file" name="image" class="form-control-file">
                </div>
                </br>
                <button type="submit" class="submit-btn">Save Note</button>
            </form>

        </div>
    </div>
    {{-- Start Event --}}
    <div class="col-md-3">
        <div class="righbar-below">
            @include('admin.schedules.view')
        </div>
    </div>
    {{-- End Event --}}
</div>

@endsection




