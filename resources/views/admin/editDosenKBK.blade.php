@extends('layout.main')
@section('title', 'Edit Dosen KBK')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dosen KBK</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Update Dosen KBK</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('admin.dosenkbk.update', ['id' => $dosenkbk->id_dosenkbk]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Dosen KBK</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputName1">ID Dosen</label>
                                            <input type="number" class="form-control" id="exampleInputid_dosen"
                                                name="id_dosen" value="{{ $dosenkbk->id_dosen }}"
                                                placeholder="Enter id dosen">
                                            @error('id_dosen')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputName1">ID KBK</label>
                                            <input type="number" class="form-control" id="exampleInputid_kbk"
                                                name="id_kbk" value="{{ $dosenkbk->id_kbk }}" placeholder="Enter id kbk">
                                            @error('id_kbk')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputName1">ID Jabatan KBK</label>
                                            <input type="number" class="form-control" id="exampleInputid_kbk"
                                                name="id_jabatan_kbk" value="{{ $dosenkbk->id_jabatan_kbk }}"
                                                placeholder="Enter id jabatan kbk">
                                            @error('id_jabatan_kbk')
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
