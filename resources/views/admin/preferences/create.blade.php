@extends('layouts.app')
<style>
    .search-box {
        margin-bottom: 20px;
    }

    .preference-section h4 {
        color: #007bff;
        font-weight: bold;
    }

    .preference-section .form-group {
        display: flex;
        align-items: center;
        border: 1px solid #e0e0e0;
        border-radius: 10px;
        padding: 10px;
        background-color: #f8f9fa;
    }

    .preference-section .form-group img {
        border-radius: 50%;
        margin-left: 15px;
    }

    .schedule-btn {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .schedule-btn:hover {
        background-color: #0056b3;
    }
</style>
@section('content')
<div class="row">
    <div class="col-md-9">
        <div class="preference-section p-4 bg-white shadow-sm rounded">
            <h4 class="text-primary font-weight-bold mb-3">Select Your Assets</h4>
            <form action="{{ route('preferences.store') }}" method="POST">
                @csrf
                <div class="row">
                    @foreach ($locations as $location)
                        <div class="col-md-6 mb-3">
                            <div class="form-group d-flex align-items-center p-2 border rounded bg-light">
                                <input type="checkbox" class="form-check-input me-2" 
                                       name="preferences[{{ $loop->index }}][id]" 
                                       id="preference_{{ $location->id }}" 
                                       value="{{ $location->id }}">
                                <label class="form-check-label" for="preference_{{ $location->id }}" style="flex: 1;">
                                    <strong>{{ $location->name }}</strong>
                                    <p class="text-muted mb-0">{{ $location->label }}</p>
                                </label>
                                <img src="{{ $location->photo }}" alt="{{ $location->name }}" 
                                     class="rounded-circle ms-3" width="50" height="50">
                            </div>

                            {{-- Hidden Inputs --}}
                            <input type="hidden" name="preferences[{{ $loop->index }}][name]" value="{{ $location->name }}">
                            <input type="hidden" name="preferences[{{ $loop->index }}][label]" value="{{ $location->label }}">
                            <input type="hidden" name="preferences[{{ $loop->index }}][icon]" value="{{ $location->icon }}">
                            <input type="hidden" name="preferences[{{ $loop->index }}][photo]" value="{{ $location->photo }}">
                        </div>
                    @endforeach
                </div>
                <button type="submit" class="btn btn-primary mt-3 px-4">Save Preferences</button>
            </form>
        </div>
    </div>
    <div class="col-md-3">
        <div class="sidebar-section shadow-sm p-3 bg-white rounded">
            @include('admin.schedules.view')
        </div>
    </div>
</div>
@endsection
