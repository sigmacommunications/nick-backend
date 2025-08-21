<div class="navbar bg-light shadow-sm p-3 d-flex justify-content-between align-items-center">
    <div class="navbar-left">
        <h3>Hello, {{ Auth::user()->name }}</h3>
        <h4 class="main1-b">
            @if(Auth::check() && Auth::user()->roles->isNotEmpty() && Auth::user()->roles[0]['name'] == 'Admin')
                Admin Dashboard
            @else
                User Dashboard
            @endif
        </h4>
    </div>

    <div class="rightbar d-flex align-items-center">
        <!-- Notifications Section -->
        <div class="icons-div me-3 position-relative">
            <a href="#">
                <i class="fa fa-bell fa-lg text-dark"></i>
            </a>
            <span class="bubble_count badge bg-danger position-absolute top-0 start-100 translate-middle">
                {{ $notifications_count ?? 0 }}
            </span>
        </div>

        <!-- User Profile and Dropdown -->
        <div class="dropdown">
            <!-- Removed the "dropdown-toggle" class and "data-bs-toggle" attribute -->
            <a href="#" class="d-flex align-items-center text-decoration-none" id="dropdownUser" aria-expanded="false">
                <img src="{{ Auth::user()->image ? asset('uploads/profile/' . Auth::user()->image) : asset('assets/images/dashboard/chat-2.png') }}"
                     class="admin-img rounded-circle" width="50" height="50" alt="Profile" />
            </a>
            <!-- Profile Dropdown Menu -->
            <ul class="dropdown-menu dropdown-menu-end shadow-sm" aria-labelledby="dropdownUser" style="margin: 4px -67px;">
                <li><a class="dropdown-item" href="{{ route('profile.index') }}">Profile</a></li>
                <li><hr class="dropdown-divider"></li>
                <li>
                    <a class="dropdown-item text-danger" href="{{ route('logout') }}"
                       onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                        Logout
                    </a>
                </li>
            </ul>
        </div>

        <!-- Hidden Logout Form -->
        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
            @csrf
        </form>
    </div>
</div>

