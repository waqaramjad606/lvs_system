<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="{{asset('admin_assets/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">

            @if(Auth::user()->user_type == 1)
                Admin Dashboard
            @else
                Sub-Admin Dashboard
            @endif
        </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{asset('admin_assets/dist/img/user2-160x160.jpg')}} " class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">
                    @if(Auth::user()->user_type == 1)
                        Admin Dashboard
                    @else
                        Sub-Admin Dashboard
                    @endif
                </a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="{{ route('dashboard') }}" class="nav-link" id="homeli">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>

                @if(Auth::user()->user_type == 1)

                    <li class="nav-item">
                        <a href="{{ route('dashboard.users') }}" class="nav-link" id="usersli">
                            <i class="nav-icon fas fa-user"></i>
                            <p>
                                Users
                            </p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('dashboard.loan_organizations') }}" class="nav-link" id="orgli">
                            <i class="nav-icon fa fa-building"></i>
                            <p>
                                Loan Organization
                            </p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="{{ route('dashboard.loan_application') }}" class="nav-link" id="loanli">
                            <i class="nav-icon fas fa-book-reader"></i>
                            <p>
                                Loan Applications
                            </p>
                        </a>
                    </li>
                @else
                    <li class="nav-item">
                        <a href="{{ route('applications') }}" class="nav-link" id="loanli">
                            <i class="nav-icon fas fa-book-reader"></i>
                            <p>
                                Loan Applications
                            </p>
                        </a>
                    </li>
                @endif

                <li class="nav-header">Profile</li>

                <li class="nav-item">
                    <a href="{{ asset('profile') }}" class="nav-link">
                        <i class="nav-icon far fa-user"></i>
                        <p>
                            My Profile
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('logout') }}" class="nav-link">
                        <i class="nav-icon far fa-user"></i>
                        <p>
                           Logout
                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
