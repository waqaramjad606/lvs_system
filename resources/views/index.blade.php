<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="{{ asset('lvs_assets/css/bootstrap.min.css') }} ">
    <link rel="stylesheet" href="{{ asset('lvs_assets/css/track.css') }}">
    <link rel="stylesheet" href="{{ asset('lvs_system/css/verify.css') }} ">
    <link rel="stylesheet" href="{{ asset('lvs_assets/css/responsive.css') }}">

</head>

<body class="main-layout">
@include('layouts.header');
<div class="banner-slider">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7">
                <div id="slider_main" class="carousel slide" data-ride="carousel">
                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="{{ asset('lvs_assets/images/person.png') }} " alt="#" />
                        </div>
                        <div class="carousel-item">
                            <img src="{{ asset('lvs_assets/images/person.png') }}" alt="#" />
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#slider_main" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                    </a>
                    <a class="carousel-control-next" href="#slider_main" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
            <div class="col-md-5">
                <div class="full slider_cont_section">
                    <h3>Loan Scheme</h3>
                    <p style="font-size: 24px">In line with Government of Pakistan’s vision, Government and Privae ENGOS offers the financing scheme for youth entrepreneurs. Eligible persons can apply for the said financing only through this Loan Varification System. In this System many ENGOs and Governements are giving the loan at very low imterest.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<br><br>
<!-- <h3 style="text-align: center;">Scheme</h3> -->
<div class="mid">
    <div class="row">

        <div style="background-color: #63bb63;" text-center class="col-md-3">
            <img src="{{ asset('lvs_assets/Images/loan.png') }}" style="height: 25%; width: 35%; ">
            <br><br><br>

            <h3 style="text-align:center; font-size: 30px; color: white;">Apply Loan</h3>
            <p style="color:white; text-align:center;">Business loans to meet your needs. Apply online
                <br>
                Click to Apply For Loan
            </p>

            <button onclick="window.location.href='{{ route('apply_application') }}'" type="button" class="loanApply">Apply For Loan</button>
        </div>
        <br><br>
        <div style="background-color: #e56e6e;" class="col-md-3">
            <img src="{{ asset('lvs_assets/Images/track.png') }}" style="height: 30%; width: 40%; ">
            <br><br>
            <h3 style="text-align:center; font-size: 30px; color: white;">Track Application</h3>
            <p style="color:white; text-align:center;">Track Loan Application Status Check Online from the portal that has been launched </p>
            <button onclick="window.location.href='{{ route('track') }}'" type="button" class="track">Track Application</button>

        </div>
        <br><br>
        <div style="background-color: #69ccf5;" class="col-md-3">
            <img src="{{ asset('lvs_assets/Images/statistic.png') }} " style="height: 25%; width: 35%; ">
            <br><br>

            <h3 style="text-align:center; font-size: 30px; color: white;">Person Verification</h3>
            <p style="color:white; text-align:center;">The most common method is required for verification. </p>
            <button onclick="window.location.href='{{ route('verification') }}'" type="button" class="statistic">Verification</button>
        </div>
        <br><br>
    </div>
</div>
<br><br><br><br>

<h2 style="text-align: center; font-size:26px; font-weight: bold;">Our Partners</h2>
<marquee behavior="scroll" direction="left">
    <img src="{{ asset('lvs_assets/Images/bop.png') }} " width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/abl.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/ubl.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/gift.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/meezan.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/sindh.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/smeda.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/state.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/gift.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/bop.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/abl.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/ubl.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/gift.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/meezan.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/sindh.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/smeda.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/state.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/gift.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/bop.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/abl.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/ubl.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/gift.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/meezan.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/sindh.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/smeda.jpg') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/state.png') }}" width="120" height="80" alt="Natural" />
    <img src="{{ asset('lvs_assets/Images/gift.jpg') }}" width="120" height="80" alt="Natural" />

</marquee>


<br><br><br><br><br><br><br>
@include('layouts.footer');
<div class="cpy">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>Copyright © 2022 Design by <a href="">Muhammad Tayyab</a></p>
            </div>
        </div>
    </div>
</div>

<script src="{{ asset('lvs_assets/js/jquery.min.js') }}"></script>
<script src="{{ asset('lvs_assets/js/plugin.js') }}"></script>
<script src="{{ asset('lvs_assets/js/custom.js') }}"></script>
<script src="{{ asset('lvs_assets/js/bootstrap.bundle.min.js') }}"></script>



</body>
</html>
