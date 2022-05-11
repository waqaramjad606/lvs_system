<!DOCTYPE html>
<html>
<head>
    <title>Verification</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" href="{{ asset('lvs_assets/css/verify.css') }} ">
    <link rel="stylesheet" href="{{ asset('lvs_assets/css/bootstrap.min.css') }} ">
    <link rel="stylesheet" href="{{ asset('lvs_assets/css/track.css') }}">
    <link rel="stylesheet" href="{{ asset('lvs_assets/css/responsive.css') }}">

</head>

<body class="main-layout">

@include('layouts.header');




<br><br><br><br>

<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header" style="color: black; font-size: 20px; text-align: center;">
                    Enter Verification Details
                </div>
                <div class="card-body" style="align-items: center">
                    <input type="number" name="" placeholder="Enter CNIC Number">


                </div>
                <div class="card-footer" style="align-items: center;">
                    <button type="Submit" style="width: 45%; margin-left: 10px;" id="myBtn" class="btn btn-success">Submit</button>
                    <button type="Submit" style="width: 45%; margin-left: 10px;"  class="btn btn-danger">Cancel</button>
                    <div id="myModal" class="modal">

                        <div class="modal-content">
                            <span class="close">&times;</span>
                            <h1>Application Detail</h1>

                            <label for="email"><b>Name</b></label>
                            <input type="text" placeholder="Enter Email" name="email" disabled>

                            <label for="psw"><b>CNIC</b></label>
                            <input type="text" placeholder="Enter Password" name="psw" disabled>
                            <label for="email"><b>Phone Number</b></label>
                            <input type="text" placeholder="Enter Email" name="email" disabled>
                            <label for="email"><b>Application Status</b></label>
                            <input type="text" placeholder="Enter Email" name="email" disabled>
                            <label for="email"><b>Date</b></label>
                            <input type="text" placeholder="Enter Email" name="email" disabled>


                        </div>

                    </div>

                    <script>
                        var modal = document.getElementById("myModal");

                        var btn = document.getElementById("myBtn");

                        var span = document.getElementsByClassName("close")[0];

                        btn.onclick = function() {
                            modal.style.display = "block";
                        }

                        span.onclick = function() {
                            modal.style.display = "none";
                        }

                        window.onclick = function(event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    </script>











                </div>

            </div>


        </div>
        <div class="col-md-3"></div>
    </div>
</div>







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
