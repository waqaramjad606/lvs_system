<!DOCTYPE html>
<html>
<head>
    <title>Track Application</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
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
                    Track Application
                </div>
                <div id="result" class="text-center" style="display: none;">

                </div>
                <form method="post" id="trackForm">
                    <div class="card-body" style="align-items: center">
                        <input type="number" name="cnic_no" id="cnic_no" placeholder="Enter CNIC Number">
                        {{--               <input type="number" name="" placeholder="Enter PIN Code">--}}
                    </div>
                    <div class="card-footer text-center" style="align-items: center;">
                        <button type="Submit" style="width: 47%; margin-left: 10px;"  class="btn btn-success">
                            Submit
                        </button>
                    </div>
                </form>
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
            </div>
        </div>

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
    $("#trackForm").submit(function (event) {
        event.preventDefault();
        var cnic_no = $("#cnic_no").val();
        $.ajax({
            url: "{{ route('application_status') }}",
            type: "POST",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                cnic_no: cnic_no,
            },
            success: function (data) {
                console.log(data);
                var status='';
                console.log(data.length);
                if(data.length>0){
                    if(data[0].status == 0){
                        status =`<p class="text-warning py-4">Your application is pending.</p>`;
                        $("#result").html(status);
                        $("#result").show();
                    }else if(data[0].status == 1){
                        status =`<p class="text-success py-4">Your application is approved.</p>`;
                        $("#result").html(status);
                        $("#result").show();
                    }else{
                        status =`<p class="text-danger py-4">Your application is rejected.</p>`;
                        $("#result").html(status);
                        $("#result").show();
                    }
                }else{
                    status =`<p class="text-danger py-4">No application is found against this cnic</p>`;
                    $("#result").html(status);
                    $("#result").show();
                }

            }
        });
    });
</script>
</body>
</html>
