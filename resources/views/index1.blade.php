<!DOCTYPE html>
<html>
<head>
    <title>Lvs System</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/bootstrap.min.css') }}">
    <!--  <link rel="stylesheet" href="css/styl.css"> -->
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/verify.css') }}">
    <!--       <link rel="stylesheet" href="css/style.css"> -->
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/responsive.css') }}">

</head>

<body class="main-layout">
<!--       <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="" /></div>
      </div> -->
@include('layouts.header');


<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header" style="color: black; font-size: 20px; text-align: center;">
                    Enter Login Details
                </div>
                @if(Session::has('error'))
                    <div class="alert alert-danger text-center">
                        <strong>{{ session('error') }}</strong>
                    </div>
                @endif

                @if(Session::has('registration_success'))
                    <div class="alert alert-success text-center">
                        <strong>{{ session('registration_success') }}</strong>
                    </div>
                @endif

                <form method="post" action="{{ route('login.post') }}">
                    @csrf
                    <div class="card-body" style="align-items: center">
                        <input class="form-control{{ $errors->has('cnic_no') ? ' is-invalid' : '' }}" type="text" name="cnic_no" id="cnic_no" placeholder="Enter Cnic Number">


                        @if ($errors->has('cnic_no'))
                            <span class="invalid-feedback">
                                <strong>{{ $errors->first('cnic_no') }}</strong>
                            </span>
                        @endif

                        <input class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" type="text" name="password" id="password" placeholder="Enter Password">

                        @if ($errors->has('password'))
                            <span class="invalid-feedback">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="card-footer" style="align-items: center;">
                        <button type="Submit" style="width: 45%; margin-left: 10px;" class="btn btn-success">Submit</button>
                        <button type="reset" style="width: 45%; margin-left: 10px;" class="btn btn-danger">Cancel</button>
                    </div>

                    <div class="card-footer" style="align-items: center; font-size: 15px;">
                        <a href="forget.html">Forget Password</a>
                        <a class="a" href="register.html">Don't Have Account</a>
                    </div>
                </form>

            </div>


        </div>
        <div class="col-md-3"></div>
    </div>
</div>


<br><br><br><br><br><br><br>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <h3 style="color:white; font-size: 20px;">Contact Information</h3>
                <ul class="contact_information">
                    <li><span><img src="images/location_icon.png" alt="#"/></span><span class="text_cont">Gift University<br>Gujranwala, Pakistan</span>
                    </li>
                    <li><span><img src="images/phone_icon.png" alt="#"/></span><span class="text_cont">055*******<br>055********</span>
                    </li>
                    <li><span><img src="images/mail_icon.png" alt="#"/></span><span class="text_cont">181400029@gift.edu.pk<br>181400179@gift.edu.pk</span>
                    </li>
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
                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Tracking Application</a>
                        </li>
                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> About Us</a></li>

                    </ul>
                </div>
            </div>
            <!-- <div class="col-lg-4 col-md-6">
               <div class="footer_links">
                  <h3>Instagram</h3>
                  <ol>
                     <li><img class="img-responsive" src="images/footer_blog.png" alt="#" /></li>
                     <li><img class="img-responsive" src="images/footer_blog.png" alt="#" /></li>
                     <li><img class="img-responsive" src="images/footer_blog.png" alt="#" /></li>
                     <li><img class="img-responsive" src="images/footer_blog.png" alt="#" /></li>
                  </ol>
               </div>
            </div> -->
            <br> <br>
            <div class="col-lg-3 col-md-6">
                <div class="footer_links">
                    <h3>Contact us</h3>
                    <form action="index.html">
                        <fieldset>
                            <div class="field">
                                <input type="text" name="name" placeholder="Your Name" required=""/>
                            </div>
                            <div class="field">
                                <input type="email" name="email" placeholder="Email" required=""/>
                            </div>
                            <div class="field">
                                <input type="text" name="subject" placeholder="Subject" required=""/>
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

<script src="{{  asset('lvs_assets/js/jquery.min.js') }}"></script>
<script src="{{  asset('lvs_assets/js/plugin.js') }}"></script>
<script src="{{  asset('lvs_assets/js/custom.js') }}"></script>
<script src="{{  asset('lvs_assets/js/bootstrap.bundle.min.js') }}"></script>

</body>
</html>
