<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard</title>
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    @include('dashboard_includes/dashboard-links')
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">



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
            <h1 class="m-0">Users</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Users</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        @if(session()->has('success'))
            <div class="alert alert-success">
                {{ session()->get('success') }}
            </div>
        @endif
      <div class="container-fluid">
          <div class="card">
              <div class="card-body">
                  <table id="userTable" class="table table-bordered table-striped">
                      <thead>
                      <tr>
                          <th>#</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>CNIC</th>
                          <th>Issue Date</th>
                          <th>Phone</th>
                          <th>Permanent Address</th>
                          <th>Home Address</th>
                          <th>Apply Date</th>
                          <th>Status</th>
                          <th>Action</th>
                      </tr>
                      </thead>
                      <tbody>
                        @foreach($applications as $application)
                            <tr>
                                <td>{{ $application->id }}</td>
                                <td>{{ $application->fname }}</td>
                                <td>{{ $application->lname }}</td>
                                <td>{{ $application->cnic_no }}</td>
                                <td>{{ $application->issue_date }}</td>
                                <td>{{ $application->phone }}</td>
                                <td>{{ $application->permanent_address }}</td>
                                <td>{{ $application->home_address }}</td>
                                <td>{{ $application->created_at }}</td>
                                <td>
                                    @if($application->status == 0)
                                        <span class="badge badge-warning">Pending</span>
                                    @elseif($application->status == 1)
                                        <span class="badge badge-success">Accepted</span>
                                    @else
                                        <span class="badge badge-danger">Rejected</span>
                                    @endif
                                </td>

                                <td>
                                    @if($application->status == 0)
                                    <button class="btn btn-success" id="{{ $application->id }}" onclick="acceptApplication(this.id)">Accept</button>
                                    <button class="btn btn-danger" id="{{ $application->id }}" onclick="rejectApplication(this.id)">Reject</button>
                                    @else
                                        <button class="btn btn-info" disabled>Close</button>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                      </tbody>
                  </table>
              </div>
          </div>

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
        $("#loanli").addClass("active");
        $("#userTable").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });

    function acceptApplication(id) {
        Swal.fire({
            title: 'Are you sure?',
            showCancelButton: true,
            confirmButtonText: 'Yes',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "{{ route('dashboard.accept_application') }}",
                    type: "POST",
                    headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                    data: {
                        id: id,
                    },
                    success: function (data) {
                        if (data.trim() == "true") {
                            Swal.fire({
                                icon: 'success',
                                title: 'success',
                                text: 'Application accept successfully!',
                            }).then((result) => {
                                location.reload();
                            })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Failed to accept application!'
                            })
                        }
                    }//success
                });//ajax
            }
        })
    }

    function rejectApplication(id) {
        Swal.fire({
            title: 'Are you sure?',
            showCancelButton: true,
            confirmButtonText: 'Yes',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "{{ route('dashboard.reject_application') }}",
                    type: "POST",
                    headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                    data: {
                        id: id,
                    },
                    success: function (data) {
                        if (data.trim() == "true") {
                            Swal.fire({
                                icon: 'success',
                                title: 'success',
                                text: 'Application rejected successfully!',
                            }).then((result) => {
                                location.reload();
                            })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Failed to reject application!'
                            })
                        }
                    }//success
                });//ajax
            }
        })
    }
</script>
</body>
</html>
