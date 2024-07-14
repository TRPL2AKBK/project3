@extends('layout.main')
@section('title', 'Import User')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Data User</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Update Prodi</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">

                <div class="row">
                    <!-- left column -->
                    <div class="col-md-6">
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Form Import User</h3>
                            </div>
                            <div class="card-body">
                                @if (session('status'))
                                    <div class="alert alert-succes">{{ session('status') }}</div>
                                @endif
                                <form action="{{ route('user.import') }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group">
                                        <label for="exampleInputName1">Fromat data user</label>
                                        <a href="{{ asset('storage/Format/Format_user.xlsx') }}" target="_blank"><b><a
                                                    href="{{ asset('storage/Format/Format_user.xlsx') }}"
                                                    target="_blank">Download</a>
                                            </b></a>
                                    </div>


                                    <div class="form-group">
                                        <label for="exampleInputFile">File Excel</label>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="exampleInputFile"
                                                    name="import_file">
                                                <label class="custom-file-label" for="exampleInputFile">Pilih file</label>
                                            </div>
                                            <div class="input-group-append">
                                                <span class="input-group-text">Upload</span>
                                            </div>
                                        </div>
                                        @error('import_file')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                    </div>

                                </form>
                            </div>
                            {{-- <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div> --}}
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

{{-- @extends('layout.main')
@section('content')
    <div class="container">

        @if (session('status'))
            <div class="alert alert-succes">{{ session('status') }}</div>
        @endif

        <form action="{{ route('user.import') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="card_body">
                <label for="exampleInputName1">Import data dari excel</label>
                <div class="form-group">
                    <input type="file" name="import_file" />
                    <button type="submit" class="btn btn-primary">Import</button>
                </div>
            </div>
        </form>



    </div>
@endsection --}}
