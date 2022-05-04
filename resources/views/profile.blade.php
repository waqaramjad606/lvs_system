
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard</title>

    @include('dashboard_includes/dashboard-links')

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- Preloader -->
    <!--    <div class="preloader flex-column justify-content-center align-items-center">-->
    <!--        <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">-->
    <!--    </div>-->

    <!-- Navbar -->
    @include('dashboard_includes/header')
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    @include('dashboard_includes/sidebar')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">User Profile</h1>
                    </div><!-- /.col -->

                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container">
                <!-- Main row -->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-6 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>Personal Info</h4>
                            </div>
                            @if(session()->has('success'))
                                <div class="alert alert-success">
                                    {{ session()->get('success') }}
                                </div>
                            @endif
                            <div class="card-body">
                                <form id="updateUserProfile" method="post" action="{{ route('profile.update') }}">
                                    <input class="form-control" type="hidden" id="uid" name="user_id" value="{{$user->id}}">

                                    <label class="my-2">Full Name</label>
                                    <input type="text" class="form-control" name="name" value="{{ $user->name }}">

                                    <label class="my-2">Email</label>
                                    <input type="email" class="form-control" name="email" value="{{ $user->email }}">

                                    <label class="my-2">CNIC NO</label>
                                    <input type="text" class="form-control" name="cnic_no" value="{{ $user->cnic_no }}">

                                    <div class="col-12 text-center my-4">
                                        <button type="submit" class="btn btn-success" >Update</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.row (main row) -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    @include('dashboard_includes/footer')
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<script>
    $( document ).ready(function() {
        $("#profileli").addClass("active");

    });</script>
<script src="customjs/myjs.js"></script>
</body>
</html>
