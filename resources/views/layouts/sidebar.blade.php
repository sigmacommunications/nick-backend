    <div class="sidebar">
        <div>
            <img src="{{ asset('assets/images/logo.png') }}" class="sidebar-logo" />

            <div class="sidebar-links2">
                <a href="{{ route('admin.dashboard') }}"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
                @can('role-list')
                    <a href="{{ route('roles.index') }}"><i class="fas fa-user-shield"></i>Roles</a>
                @endcan
                @can('user-list')
                    <a href="{{ route('users.index') }}"><i class="fas fa-users"></i>Users</a>
                @endcan
                @can('permission-list')
                    <a href="{{ route('permission.index') }}"><i class="fas fa-key"></i>Permission</a>
                @endcan
                @can('package-list')
                    <a href="{{ route('subscription.index') }}"><i class="fas fa-box"></i>Package</a>
                @endcan
                @can('location-category-list')
                    <a href="{{ route('location-categories.index') }}"><i class="fas fa-map-marker-alt"></i>location Categories</a>
                @endcan
                @can('subscription-dash')
                    <a href="{{ route('subscription-dash.index') }}"><i class="fas fa-chart-pie"></i>Subscription Page</a>
                @endcan
                    <a href="{{ route('profile.index') }}"><i class="fas fa-user-cog"></i> Profile Setup</a>
                @can('preferences-create')
                    <a href="{{ route('preferences.create') }}"><i class="fas fa-cogs"></i> Preferences</a>
                @endcan
                @can('location-index')
                    <a href="{{ route('location.index') }}"><i class="fas fa-search-location"></i> Location Search</a>
                @endcan
                @can('notes-index')
                    <a href="{{ route('notes.index') }}"><i class="fas fa-sticky-note"></i> Notes</a>
                @endcan
                @can('notes-create')
                    <a href="{{ route('notes.create') }}"><i class="fas fa-save"></i> Saved Notes</a>
                @endcan
				@can('schedules-index')
                	<a href="{{ route('schedules.index') }}"><i class="fas fa-calendar-alt"></i>Schedules</a>
            	@endcan
			</div>
        </div>
        <div>
            <h3 class="sidebar-h3">SYSTEM</h3>
            <div class="sidebar-links1">
                {{-- <a href="#"><i class="fa-thin fa-circle-exclamation"></i> Help Center</a> --}}
                {{-- <a href="#"><i class="fa-regular fa-gear-complex"></i>Settings</a> --}}
                <a class="dropdown-item" href="{{ route('logout') }}"
                    onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> Logout
                </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>

            </div>
        </div>
    </div>
