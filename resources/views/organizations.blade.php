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
                        <h1 class="m-0">Organizations</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Organizations</li>
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
                    <div class="card-header">
                        <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Add New Organization</button>
                    </div>
                    <div class="card-body">
                        <table id="userTable" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Organization Name</th>
                                <th>Location</th>
                                <th>Image</th>
                                <th>Type</th>
                                <th>Status</th>
                                <th>Registration Date</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($organizations as $organization)
                                <tr>
                                    <td>{{ $organization->id }}</td>
                                    <td>{{ $organization->name }}</td>
                                    <td>{{ $organization->location }}</td>
                                    <td>{{ $organization->img_path }}</td>
                                    <td>{{ $organization->type }}</td>
                                    <td>
                                        @if($organization->status==1)
                                            <span class="badge badge-success">Active</span>
                                        @else
                                            <span class="badge badge-danger">Blocked</span>
                                        @endif
                                    </td>
                                    <td>{{ $organization->created_at }}</td>
                                    <td>
                                        @if($organization->status == 1)
                                            <button class="btn btn-danger my-1" id="{{ $organization->id }}" onclick="blockOrganization(this.id)">Block</button>
                                        @else
                                            <button class="btn btn-success my-1" id="{{ $organization->id }}" onclick="activeOrganization(this.id)">Active</button>
                                        @endif

                                        <form action="{{ route('deleteOrganization',$organization->id) }}" method="post">
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
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Organization</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="post" id="addOrganizationForm">
                        <div class="form-group">
                            <label>Organization Name:</label>
                            <input type="text" class="form-control" placeholder="Please enter organization name" id="organizatonName">
                        </div>

                        <div class="form-group">
                            <label>Address:</label>
                            <input type="text" class="form-control" placeholder="Please enter organization address" id="organizatonAddress">
                        </div>
                        <label>Organization Type:</label>
                        <div class="form-group">
                            <select class="form-control mb-3" aria-label=".form-select-lg example" id="organizatonType">
                                <option value="bank">Bank</option>
                                <option value="ngo"> Non-Governmental Organization (NGO)</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Upload Image:</label>
                            <input type="file" class="form-control" id="organizationImage">
                        </div>

                        <div class="text-center">
                            <button class="btn btn-success" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<script>
    $( document ).ready(function() {
        $("#orgli").addClass("active");
        $("#userTable").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });

    function activeOrganization(id) {
        Swal.fire({
            title: 'Are you sure?',
            showCancelButton: true,
            confirmButtonText: 'Yes',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "{{ route('activeOrganization') }}",
                    type: "POST",
                    headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                    data: {
                        id: id,
                    },
                    success: function (data) {
                        console.log(data);
                        if (data.trim() == "true") {
                            Swal.fire({
                                icon: 'success',
                                title: 'success',
                                text: 'Organization active successfully!',
                            }).then((result) => {
                                location.reload();
                            })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Failed to active Organization!'
                            })
                        }
                    }//success
                });//ajax
            }
        })
    }//active user

    function blockOrganization(id) {
        Swal.fire({
            title: 'Are you sure?',
            // showDenyButton: true,
            showCancelButton: true,
            confirmButtonText: 'Yes',
        }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
                $.ajax({
                    url: "{{ route('blockOrganization') }}",
                    type: "POST",
                    headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                    data: {
                        id: id,
                    },
                    success: function (data) {
                        console.log(data);
                        if (data.trim() == "true") {
                            Swal.fire({
                                icon: 'success',
                                title: 'success',
                                text: 'Organization block successfully!',
                            }).then((result) => {
                                location.reload();
                            })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Failed to block Organization!'
                            })
                        }
                    }//success
                });//ajax
            }
        })

    }//block user

    $( "#addOrganizationForm" ).submit(function( event ) {

        event.preventDefault();
        var name=$("#organizatonName").val();
        var address=$("#organizatonAddress").val();
        var type=$("#organizatonType").val();
        // var image=$("#organizationImage")[0].files[0];
        var image='';
        console.log(image);
        $.ajax({
            url: "{{ route('addOrganization') }}",
            type: "POST",
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: {
                name: name,
                address: address,
                type: type,
                image:image
            },
            success: function (data) {
                console.log(data);
                if (data.trim() == "true") {
                    Swal.fire({
                        icon: 'success',
                        title: 'success',
                        text: 'Organization added successfully!',
                    }).then((result) => {
                        location.reload();
                    })
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Failed to add Organization!'
                    })
                }
            }//success
        });//ajax
    });
</script>
</body>
</html>
