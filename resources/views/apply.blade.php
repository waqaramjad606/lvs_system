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
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/style.css') }}">
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/track.css') }}">
    <link rel="stylesheet" href="{{  asset('lvs_assets/css/responsive.css') }}">

</head>

<body class="main-layout">
@include('layouts.header');
<br>
<div class="row">

    <div class="col-md-12" id="tagline"><h3 style="text-align: center;margin-top: 6px; color: white;">Enter Application
            Detail</h3></div>

</div>


<div class="container">

    <div class="row" style="height: 100%;">
        <br>
        <p>Please provide required information in all sections as all sections are mandatory.
            <br>
            For all complaints,please visit Pakistan Citizen Portal App.<br>
            Please fill in the required fields of Applicant’s CNIC, Issue date and DOB correctly as they are to be
            verified by Nadra.</p>
        <p></p>
        <br>
        <br>
        <div class="my-4">
            @if(session()->has('success'))
                <div class="alert alert-success">
                    {{ session()->get('success') }}
                </div>
            @endif
        </div>
        <div class="col-md-12">
            <p class="text-muted" style="color: black; font-size: 25px; text-align:center;"> Please Enter your
                Detail!</p>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-10">

            <form class="box" id="applyForm" method="post">
                <input type="text" name="fname" id="fname" placeholder="Enter First Name" required>
                <input type="text" name="lname" id="lname" placeholder="Enter Second Name" required>
                <input type="number" name="cnic_no" id="cnic_no" placeholder="Enter CNIC number" required>
                <input type="number" name="cnic_no_1" id="cnic_no_1" placeholder="Re-Enter CNIC number" required>
                <input type="date" name="issuedate" id="issuedate" placeholder="CNIC Issuance Date" required>
                <input type="number" name="phone" id="phone" placeholder="Enter Phone Number" required>
                <input type="text" name="homeaddress" id="homeaddress" placeholder="Home Adress" required>
                <input type="text" name="permanentaddress" id="permanentaddress" placeholder="Permanent Address"
                       required>
                <input type="submit" value="Submit & Next" style="color:black;">
                <br>
            </form>
        </div>
    </div>
</div>

<br><br><br><br>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

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
<script src="{{ asset('lvs_assets/ js/plugin.js') }}"></script>
<script src="{{ asset('lvs_assets/js/custom.js') }} "></script>
<script src="{{ asset('lvs_assets/js/bootstrap.bundle.min.js') }}"></script>

<script>
    $("#applyForm").submit(function (event) {
        event.preventDefault();
        var fname = $("#fname").val();
        var lname = $("#lname").val();
        var cnic_no = $("#cnic_no").val();
        var cnic_no_1 = $("#cnic_no_1").val();
        var issuedate = $("#issuedate").val();
        var phone = $("#phone").val();
        var homeaddress = $("#homeaddress").val();
        var permanentaddress = $("#permanentaddress").val();
        var letters = /^[A-Za-z]+$/;
        validRegEx = /^[^\\\/&]*$/

        var mydate = issuedate.split('-');
        var year = mydate[0];
        var month = mydate[1];
        var day = mydate[2];
        if(!isOverEighteen(year,month,day)){
            console.log("<18");
            swal("Alert", 'Age must greater then 18 years', 'info');
            return;
        }

        if (cnic_no.length > 13) {
            swal("Alert", 'CNIC length cannot be greater then 13 digits', 'info');
            return;
        }

        if (cnic_no != cnic_no_1) {
            swal("Alert", 'CNIC mismatch!', 'info');
            return;
        }
        if (fname.match(letters) == null) {
            swal("Alert", 'First name cannot contain special characters or numbers!', 'info');
            return;
        }

        if (lname.match(letters) == null) {
            swal("Alert", 'Last name cannot contain special characters or numbers!', 'info');
            return;
        }

        $.ajax({
            url: "{{ route('postApplication') }}",
            type: "POST",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                fname: fname,
                lname: lname,
                cnic_no: cnic_no,
                issuedate: issuedate,
                phone: phone,
                homeaddress: homeaddress,
                permanentaddress: permanentaddress
            },
            success: function (data) {
                // console.log(data);
                if (data.trim() == 'true') {
                    swal("success", "Application apply successfully!", 'success')
                        .then((value) => {
                            location.reload();
                        });
                } else {
                    swal("Error", 'Failed to apply for loan application', 'error')
                }
            }
        });
    });

    function isOverEighteen(year, month, day) {
        var now = parseInt(new Date().toISOString().slice(0, 10).replace(/-/g, ''));
        var dob = year * 10000 + month * 100 + day * 1; // Coerces strings to integers

        // return now - dob > 180000;
        if(now - dob > 180000){
            return true;
        }else{
            return false;
        }
    }
</script>


</body>
</html>
