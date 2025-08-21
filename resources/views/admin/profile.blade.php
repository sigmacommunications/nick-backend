@extends('layouts.app')
<style>
    .profile-links .profile-link {
    font-size: 1.2rem;
    color: #555;
    padding: 10px 0;
    display: block;
        text-decoration: none;
    }

    .profile-links .profile-link:hover {
        color: #007bff;
        background-color: #f1f1f1;
        border-radius: 4px;
    }

    .profile-links form button {
        color: #555;
        padding: 10px 0;
        display: inline-block;
        border: none;
        background: none;
        font-size: 1.2rem;
        text-decoration: none;
    }

    .profile-links form button:hover {
        color: #007bff;
        background-color: #f1f1f1;
        border-radius: 4px;
    }


</style>
@section('content')
<div class="row">
    <div class="col-md-9">
        {{-- search --}}
        {{-- Profile Information --}}
        <div class="profile1">
            <img src="{{ $user->image ? asset('storage/' . $user->image) : asset('assets/images/profile-pic.png') }}" alt="Profile Picture" class="img-fluid rounded-circle" />
            <div>
                <h4 class="profile1-a">{{ $user->name }} </h4>
                <p class="profile1-b">{{  'Lorem ipsum dolor sit amet consectetur adipiscing elit.' }}</p>
            </div>
        </div>

        {{-- Profile Links --}}
        <div class="profile-links mt-4">
            <ul class="list-unstyled">
                <li><a href="{{ route('admin.dashboard') }}" class="profile-link"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="{{ route('profile.index') }}" class="profile-link"><i class="fa fa-user"></i> Profile</a></li>
                <li><a href="#" class="profile-link"><i class="fa fa-shield-alt"></i> Privacy Center</a></li>
                <li><a href="#" class="profile-link"><i class="fa fa-cogs"></i> Account Status</a></li>
                <li><a href="#" class="profile-link"><i class="fa fa-cogs"></i> Settings</a></li>
                <li>
                    <form action="{{ route('logout') }}" method="POST" style="display:inline;">
                        @csrf
                        <button type="submit" class="btn btn-link profile-link"><i class="fa fa-sign-out-alt"></i> Log Out</button>
                    </form>
                </li>
            </ul>
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




