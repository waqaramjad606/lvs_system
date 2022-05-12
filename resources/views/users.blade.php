<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <title>Dashboard</title>

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
            <h1 class="m-0">Sub-Admins</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Sub Admins</li>
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

{{--            @if (session()->has('success'))--}}
{{--                <div class="alert alert-success">--}}
{{--                    @if(is_array(session('success')))--}}
{{--                        <ul>--}}
{{--                            @foreach (session('success') as $message)--}}
{{--                                <li>{{ $message }}</li>--}}
{{--                            @endforeach--}}
{{--                        </ul>--}}
{{--                    @else--}}
{{--                        {{ session('success') }}--}}
{{--                    @endif--}}
{{--                </div>--}}
{{--            @endif--}}
      <div class="container-fluid">
          <div class="card">
              <div class="card-body">
                  <table id="userTable" class="table table-bordered table-striped">
                      <thead>
                      <tr>
                          <th>#</th>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Status</th>
                          <th>Registration Date</th>
                          <th>Action</th>
                      </tr>
                      </thead>
                      <tbody>
                      @foreach($users as $user)
                          <tr>
                              <td>{{ $user->id }}</td>
                              <td>{{ $user->name }}</td>
                              <td>{{ $user->email }}</td>
                              <td>
                                  @if($user->status==1)
                                      <span class="badge badge-success">Active</span>
                                  @else
                                      <span class="badge badge-danger">Blocked</span>
                                  @endif
                              </td>
                              <td>{{ $user->created_at }}</td>
                              <td>
                                  @if($user->status == 1)
                                      <button class="btn btn-warning my-1" id="{{ $user->id }}" onclick="blockUser(this.id)">Block</button>
                                  @else
                                      <button class="btn btn-success my-1" id="{{ $user->id }}" onclick="activeUser(this.id)">Active</button>
                                  @endif

                                  <form action="{{ route('deleteUser',$user->id) }}" method="post">
                                      @csrf
                                      @method('DELETE')
                                      <button class="btn btn-danger" type="submit">Delete</button>
                                  </form>
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
        $("#usersli").addClass("active");
        $("#userTable").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });

    function activeUser(id) {
        Swal.fire({
            title: 'Are you sure?',
            showCancelButton: true,
            confirmButtonText: 'Yes',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "{{ route('activeUser') }}",
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
                                text: 'User active successfully!',
                            }).then((result) => {
                                location.reload();
                            })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Failed to active user!'
                            })
                        }
                    }//success
                });//ajax
            }
        })
    }//active user


    function blockUser(id) {
        Swal.fire({
            title: 'Are you sure?',
            // showDenyButton: true,
            showCancelButton: true,
            confirmButtonText: 'Yes',
        }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
                $.ajax({
                    url: "{{ route('blockUser') }}",
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
                                text: 'User block successfully!',
                            }).then((result) => {
                                location.reload();
                            })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Failed to block user!'
                            })
                        }
                    }//success
                });//ajax
            }
        })

    }//block user

</script>
</body>
</html>
