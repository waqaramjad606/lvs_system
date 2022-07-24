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
            <p class="text-muted" style="color: black; font-size: 25px; text-align:center;" id="heading_text"> Please Enter your
                Detail!</p>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <form class="box" id="applyForm" method="post">
                <div id="apply_form_1" >
                    <input type="text" name="fname" id="fname" placeholder="Enter First Name" required>
                    {{--                    <span class="text-danger" style="margin-left: 20%;">Invalid name</span>--}}
                    <input type="text" name="lname" id="lname" placeholder="Enter Second Name" required>
                    <input type="text" name="cnic_no" id="cnic_no" placeholder="Enter CNIC number" required>
                    <input type="text" name="cnic_no_1" id="cnic_no_1" placeholder="Re-Enter CNIC number" required>
                    {{--                    <label style="margin-left: 16%; font-size: 1.5rem;">Issue Date:</label>--}}
                    <input type="date" name="issuedate" id="issuedate" placeholder="CNIC Issuance Date" required>
                    <div class="text-center">
                        <button type="button" class="btn btn-success" onclick="verifyNadraInformation()">Verify Button</button>
                    </div>

                </div>
                <div id="apply_form_2" style="display: none;">
                    <label style="margin-left: 15%; font-size: 1.5rem;">D.O.B</label>
                    <input type="date" name="dob_date" id="dob_date" placeholder="D.O.B" required>
                    <input type="number" name="phone" id="phone" placeholder="Enter Phone Number" required>
                    <select class="form-control-sm" aria-label="Default select example" id="martial_status" style="margin-left: 20%;width: 60%;">
                        <option value="0">select</option>
                        <option value="single">single</option>
                        <option value="married">Married</option>
                    </select>
                    <input type="text" name="homeaddress" id="homeaddress" placeholder="Home Adress" required>
                    <input type="text" name="permanentaddress" id="permanentaddress" placeholder="Permanent Address" required>
                    <input type="button" value="Submit & Next" style="color:black;" id="apply_form_2_btn">
                </div>
                {{--<input type="submit" value="Submit & Next" style="color:black;">--}}
                <div id="apply_form_3" style="display: none;">
                    <input type="text" id="gname_1" placeholder="Enter first guarantor Name" required>
                    <input type="number" id="g_number_1" placeholder="Enter first guarantor cnic no" required>
                    <input type="number" id="g_cnic_1" placeholder="Enter first guarantor mobile no" required>

                    <input type="text" id="gname_2" placeholder="Enter second guarantor Name" required>
                    <input type="number" id="g_number_2" placeholder="Enter second guarantor cnic no" required>
                    <input type="number" id="g_cnic_2" placeholder="Enter second guarantor mobile no" required>
                    <input type="button" value="Submit & Next" style="color:black;" id="apply_form_3_btn">
                </div>

                <div id="apply_form_4" style="display: none;">

                    <select class="form-control-sm" aria-label="Default select example" id="organization_id" style="margin-left: 20%;width: 60%;">
                        <option value="0">select loan organization</option>
                        @foreach($organizations as $organization)
                            <option value="{{ $organization->id }}">{{ $organization->name }}</option>
                        @endforeach
                    </select>

                    <input type="submit" value="Submit & Next" style="color:black;">
                </div>

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
    function verifyNadraInformation(){
        var fname = $("#fname").val();
        var lname = $("#lname").val();
        var cnic_no = $("#cnic_no").val();
        var cnic_no_1 = $("#cnic_no_1").val();
        var issuedate = $("#issuedate").val();
        var letters = /^[A-Za-z]+$/;
        validRegEx = /^[^\\\/&]*$/;


        $.ajax({
            url: "{{ route('verifyNadraInformation') }}",
            type: "POST",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                fname: fname,
                lname: lname,
                cnic_no: cnic_no,
                issuedate: issuedate,
            },
            success:function (data){
                console.log(data);
                var response_len=data.length;
                if(response_len<=0){
                    swal("success",'Nadra Information verify','success')
                        .then((value) => {
                            $("#apply_form_1").hide();
                            $("#apply_form_2").show();
                        });
                }else{
                    var error=data;
                    var message='';
                    if(response_len==1){
                        if(error[0]=='invalid_first_name'){
                            message='Invalid first name';
                        }
                        if(error[0]=='invalid_last_name'){
                            message='Invalid last name';
                        }

                        if(error[0]=='invalid_cnic'){
                            message='No information is found against this cnic no';
                        }

                        if(error[0]=='criminal_record_exist'){
                            message='The person have criminal record';
                        }
                    }else{
                        $.each(error,function (key,value){
                            if(value=='invalid_first_name'){
                                message='Invalid first name';
                            }
                            if(value=='invalid_last_name'){
                                message=message+ '\nInvalid last name';
                            }

                            if(value=='invalid_cnic'){
                                message=message+ '\nNo information is found against this cnic no';
                            }

                            if(value=='criminal_record_exist'){
                                message=message+ '\nThe person have criminal record';
                            }
                        });
                    }

                    swal('Error',message,'error');
                }
            }
        });
    }
    $("#applyForm").submit(function (event) {
        event.preventDefault();
        var fname = $("#fname").val();
        var lname = $("#lname").val();
        var cnic_no = $("#cnic_no").val();
        var cnic_no_1 = $("#cnic_no_1").val();
        var issuedate = $("#issuedate").val();

        var dob=$("#dob_date").val();
        var phone=$("#phone").val();
        var homeaddress=$("#homeaddress").val();
        var permanentaddress=$("#permanentaddress").val();

        var gname_1=$("#gname_1").val();
        var g_number_1=$("#g_number_1").val();
        var g_cnic_1=$("#g_cnic_1").val();

        var gname_2=$("#gname_2").val();
        var g_number_2=$("#g_number_2").val();
        var g_cnic_2=$("#g_cnic_2").val();
        var martial_status=$("#martial_status").val();
        var organization_id=$("#organization_id").val();
        var letters = /^[A-Za-z]+$/;
        validRegEx = /^[^\\\/&]*$/

        var mydate = dob.split('-');
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
        // if (fname.match(letters) == null) {
        //     swal("Alert", 'First name cannot contain special characters or numbers!', 'info');
        //     return;
        // }
        //
        // if (lname.match(letters) == null) {
        //     swal("Alert", 'Last name cannot contain special characters or numbers!', 'info');
        //     return;
        // }

        if (martial_status=='0' || martial_status==0) {
            swal("Alert", 'Please select marital status!', 'info');
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
                permanentaddress: permanentaddress,
                dob:dob,
                gname_1:gname_1,
                gname_2:gname_2,
                g_number_1:g_number_1,
                g_number_2:g_number_2,
                g_cnic_1:g_cnic_1,
                g_cnic_2:g_cnic_2,
                martial_status:martial_status,
                martial_status:martial_status,
                organization_id:organization_id,
            },
            success: function (data) {
                console.log(data);
                if (data.trim() == 'true') {
                    swal("success", "Application apply successfully!", 'success')
                        .then((value) => {
                            location.reload();
                        });
                }else {
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

    $("#apply_form_2_btn").click(function (){
        $("#apply_form_2").hide();
        $("#apply_form_3").show();
        $("#heading_text").text('Gaurantor Information');
    });

    $("#apply_form_3_btn").click(function (){
        $("#apply_form_3").hide();
        $("#apply_form_4").show();
        $("#heading_text").text('Organization Information');
    });

</script>


</body>
</html>
