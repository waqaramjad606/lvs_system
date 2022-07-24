<!DOCTYPE html>
<html>
<head>
    <title>Verification</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
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
                <form id="verificationForm">
                    <div class="card-body" style="align-items: center">
                        <input type="number" placeholder="Enter CNIC Number" id="v_cnic_no">
                    </div>
                    <div class="card-footer text-center">
                        <button type="Submit" style="width: 45%; margin-left: 10px;" class="btn btn-success">Submit</button>
                        <button style="width: 45%; margin-left: 10px;" class="btn btn-danger">Cancel</button>
                    </div>
                </form>
                <button type="button" style="display: none;" id="myBtn" class="btn btn-success">model</button>
            </div>


        </div>
        <div class="col-md-3"></div>
    </div>
</div>

{{--model--}}
<div id="myModal" class="modal">

    <div class="modal-content">
        <span class="close">&times;</span>
        <h1>Application Detail</h1>
        <div id="add_verify_data" style="display: none;">
            <label><b>First Name</b></label>
            <input type="text" class="form-control" name="fanme" id="fname" value="">
            <label><b>Last Name</b></label>
            <input type="text" class="form-control" name="lname" id="lname" value="">

            <label><b>Cnic No</b></label>
            <input type="text" class="form-control" name="cnic" id="cnic" value="">

            <label ><b>Phone Number</b></label>
            <input type="text" class="form-control" name="phone" id="phone" value="">

            <label><b>Date</b></label>
            <input type="text" class="form-control"  name="issue_date" id="issue_date" value="">

            <label for="email"><b>Home Address</b></label>
            <input type="text" class="form-control" name="home_address" id="home_address" value="">

            <label for="email"><b>Permanent Address</b></label>
            <input type="text" class="form-control" name="permanent_address" id="permanent_address" value="">
        </div>

        <div id="verify_data_1" style="display: none;"></div>

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

<script>
    var modal = document.getElementById("myModal");

    var btn = document.getElementById("myBtn");

    var span = document.getElementsByClassName("close")[0];

    btn.onclick = function () {
        modal.style.display = "block";
    }

    span.onclick = function () {
        modal.style.display = "none";
    }

    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

    </script>
    <script src="{{ asset('lvs_assets/js/jquery.min.js') }}"></script>
<script src="{{ asset('lvs_assets/js/plugin.js') }}"></script>
<script src="{{ asset('lvs_assets/js/custom.js') }}"></script>
<script src="{{ asset('lvs_assets/js/bootstrap.bundle.min.js') }}"></script>
<script>
    $("#verificationForm").submit(function (event) {

        event.preventDefault();
        var cnic_no = $("#v_cnic_no").val();
        $.ajax({
            url: "{{ route('verification_status') }}",
            type: "POST",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                cnic_no: cnic_no,
            },
            success: function (data) {
                data =JSON.parse(data);
                // console.log(data);
                var size = Object.keys(data).length;
                if(size > 0) {
                    $("#fname").val(data.fname);
                    $("#lname").val(data.lname);
                    $("#cnic").val(data.cnic_no);
                    $("#phone").val(data.phone);
                    $("#issue_date").val(data.issue_date);
                    $("#home_address").val(data.home_address);
                    $("#permanent_address").val(data.permanent_address);

                    $("#add_verify_data").show();
                    $("#myBtn").click();
                } else {
                    $("#verify_data_1").append(`<h1 class="text-danger">No Information found against this cnic number.</h1>`);
                    $("#verify_data_1").show();
                    $("#myBtn").click();
                }

            }
        });
    });
</script>
</body>
</html>
