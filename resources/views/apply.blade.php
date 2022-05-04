<!DOCTYPE html>
<html>
<head>
    <title>Loan Application</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/style.css') }}">
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/track.css') }}">
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/responsive.css') }}">

</head>

<body class="main-layout">
<!--       <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="" /></div>
      </div> -->
<header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 logo_section">
                <div class="full">
                    <div class="center-desk">

                        <div class="logo" style="width: 50%; height: 50%;"><p>   </p> <a href="index.html">
                                <img src="{{ asset('lvs_assets/images/logo.png') }}" alt="#"></a> </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="menu-area">
                    <div class="limit-box">
                        <nav class="main-menu">
                            <ul class="menu-area-main">
                                <li>
                                    <a href="home.html">Home</a>
                                </li>


                                <li class="active">
                                    <a href="apply.html">Loan Application</a>
                                </li>
                                <li>
                                    <a href="Track.html">Track Application</a>
                                </li>
                                <li>
                                    <a href="Verification.html">Verification</a>
                                </li>
                                <li>
                                    <a href="about.html">About Us</a>
                                </li>
                                <li>
                                    <a href="about.html">Login</a>
                                </li>


                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<br>
<div class="row">

    <div class="col-md-12" id="tagline"><h3 style="text-align: center;margin-top: 6px; color: white;">Enter Application Detail</h3></div>

</div>


<div class="container">

    <div class="row" style="height: 100%;">
        <br>
        <p>Please provide required information in all sections as all sections are mandatory.
            <br>
            For all complaints,please visit Pakistan Citizen Portal App.<br>
            Please fill in the required fields of Applicant’s CNIC, Issue date and DOB correctly as they are to be verified by Nadra.</p>
        <p></p>
        <div class="my-4">
            @if(session()->has('success'))
                <div class="alert alert-success">
                    {{ session()->get('success') }}
                </div>
            @endif
        </div>
        <div class="col-md-12">
            <p  class="text-muted" style="color: black; font-size: 25px; text-align:center;"> Please Enter your Detail!</p>
        </div>
        <div class="col-md-1">    </div>
        <div class="col-md-10">

            <form class="box" action="{{ route('postApplication') }}" method="post">
                @csrf
                <input type="text" name="fname" placeholder="Enter First Name">
                <input type="text" name="lname" placeholder="Enter Second Name">
                <input type="number" name="cnic_no" placeholder="Enter CNIC number">
                <input type="number" name="cnic_no_1" placeholder="Re-Enter CNIC number">
                <input type="date" name="issuedate" placeholder="CNIC Issuance Date">
                <input type="number" name="phone" placeholder="Enter Phone Number" >
                <input type="text"  name="homeaddress" placeholder="Home Adress">
                <input type="text" name="permanentaddress" placeholder="Permanent Address" >
                <input type="submit"  value="Submit & Next" style="color:black;">
                <br>
{{--                <nav aria-label="...">--}}
{{--                    <ul class="pagination">--}}
{{--                        <li class="page-item disabled">--}}
{{--                            <a class="page-link" href="#" tabindex="-1">Previous</a>--}}
{{--                        </li>--}}
{{--                        <li class="page-item active"><a class="page-link" href="apply.html">1</a></li>--}}
{{--                        <li class="page-item">--}}
{{--                            <a class="page-link" href="apply1.html">2 <span class="sr-only">(current)</span></a>--}}
{{--                        </li>--}}
{{--                        <li class="page-item"><a class="page-link" href="apply2.html">3</a></li>--}}
{{--                        <li class="page-item">--}}
{{--                            <a class="page-link" href="apply1.html">Next</a>--}}
{{--                        </li>--}}
{{--                    </ul>--}}
{{--                </nav>--}}
            </form>
        </div>
    </div>
</div>

<br><br><br><br>


























<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <h3 style="color:white; font-size: 20px;">Contact Information</h3>
                <ul class="contact_information">
                    <li><span><img src="images/location_icon.png" alt="#" /></span><span class="text_cont">Gift University<br>Gujranwala, Pakistan</span></li>
                    <li><span><img src="images/phone_icon.png" alt="#" /></span><span class="text_cont">055*******<br>055********</span></li>
                    <li><span><img src="images/mail_icon.png" alt="#" /></span><span class="text_cont">181400029@gift.edu.pk<br>181400179@gift.edu.pk</span></li>
                </ul>

            </div>
            <br> <br>
            <div class="col-lg-4 col-md-6">
                <div class="footer_links">
                    <h3>Quick link</h3>
                    <ul>
                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Home</a></li>
                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Private NGO</a></li>
                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Loan Application</a></li>
                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Tracking Application</a></li>
                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> About Us</a></li>

                    </ul>
                </div>
            </div>

            <br> <br>
            <div class="col-lg-3 col-md-6">
                <div class="footer_links">
                    <h3>Contact us</h3>
                    <form action="">
                        <fieldset>
                            <div class="field">
                                <input type="text" name="name" placeholder="Your Name" required="" />
                            </div>
                            <div class="field">
                                <input type="email" name="email" placeholder="Email" required="" />
                            </div>
                            <div class="field">
                                <input type="text" name="subject" placeholder="Subject" required="" />
                            </div>
                            <div class="field">
                                <textarea placeholder="Message"></textarea>
                            </div>
                            <div class="field">
                                <div class="center">
                                    <button class="reply_bt">Send</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</footer>
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
<script src="{{ asset('lvs_assets/ js/plugin.js') }}"></script>
<script src="{{ asset('lvs_assets/js/custom.js') }} "></script>
<script src="{{ asset('lvs_assets/js/bootstrap.bundle.min.js') }}"></script>


</body>
</html>
