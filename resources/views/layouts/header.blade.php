<header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2 logo_section">
                <div class="full">
                    <div class="center-desk">

                        <div class="logo" style="width: 50%; height: 50%;"><p></p> <a href="{{ route('home') }}">
                                <img src="{{ asset('lvs_assets/images/logo.png') }} " alt="#"></a></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-10">
                <div class="menu-area">
                    <div class="limit-box">
                        <nav class="main-menu">
                            <ul class="menu-area-main">
                                <li>
                                    <a href="{{ route('home') }}">Home</a>
                                </li>
                                <li>
                                    <a href="{{ route('apply_application') }}">Loan Application</a>
                                </li>
                                <li>
                                    <a href="{{ route('track') }}">Track Application</a>
                                </li>
                                <li>
                                    <a href="{{ route('verification') }}">Verification</a>
                                </li>
                                <li>
                                    <a href="{{ route('about') }}">About us</a>
                                </li>
                                @if (Route::has('login'))
                                    <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                                        @auth
                                            <li>
                                                <a href="{{ url('/dashboard') }}">Dashboard</a>
                                            </li>

                                        @else
                                            <li>
                                                <a href="{{ route('login') }}" class="text-light">Log in</a>
                                            </li>

                                            @if (Route::has('register'))
                                                <li>
                                                    <a href="{{ route('register') }}" class="text-light">Register</a>
                                                </li>
                                            @endif
                                        @endauth
                                    </div>
                                @endif
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

{{--scripts--}}
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
