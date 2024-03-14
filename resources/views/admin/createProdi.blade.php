@extends('layout.main')
@section('title', 'Dosen')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">User</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Tambah User</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('admin.prodi.store') }}" method="POST">
                    @csrf
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Tambah Prodi</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputName1">Kode Prodi</label>
                                            <input type="text" class="form-control" id="exampleInputProdi1"
                                                name="kode_prodi" placeholder="Enter kode prodi">
                                            @error('kode_prodi')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Prodi</label>
                                            <input type="text" class="form-control" id="exampleInputProdi1"
                                                name="prodi" placeholder="Enter prodi">
                                            @error('prodi')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">ID Jurusan</label>
                                            <input type="text" class="form-control" id="exampleInputid_jurusan1"
                                                name="id_jurusan" placeholder="Enter id jurusan">
                                            @error('id_jurusan')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Jenjang</label>
                                                <input type="text" class="form-control" id="exampleInputJenjang1"
                                                    name="jenjang" placeholder="Password">
                                                @error('prodi')
                                                    <p style="color:red;"><small>{{ $message }}</small></p>
                                                @enderror
                                            </div>
                                        </div>

                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                </form>
                            </div>
                            <!-- /.card -->
                        </div>
                        <!--/.col (left) -->
                    </div>
                </form>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
