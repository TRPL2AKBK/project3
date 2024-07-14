@extends('layout.main')
@section('title', 'Edit Profile')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Profil</h1>
                    </div>
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Edit Profile</li>
                        </ol> --}}
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('profile.update', ['id' => Auth::user()->id]) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-6">
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Edit profil</h3>
                                </div>
                                <div class="card-body">

                                    <div class="form-group">
                                        <input type="hidden" name="oldDokumen" value="{{ $data->image }}">
                                        <label for="exampleInputFile">Foto Profil</label>
                                        @if ($data->image)
                                            <div class="mt-2">
                                                <img src="{{ asset('storage/' . $data->image) }}"
                                                    alt="Current Profile Picture"
                                                    style="max-width: 150px; max-height: 150px;">
                                            </div>
                                        @else
                                            <div class="mt-2">
                                                <img src="{{ asset('storage/Image/default' . $data->image) }}"
                                                    alt="Current Profile Picture"
                                                    style="max-width: 150px; max-height: 150px;">
                                            </div>
                                        @endif
                                        <br>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="exampleInputFile"
                                                    name="image" onchange="previewImage()">
                                                <label class="custom-file-label" for="exampleInputFile">Unggah foto
                                                    profil</label>
                                            </div>
                                            <div class="input-group-append">
                                                <span class="input-group-text">Upload</span>
                                            </div>
                                        </div>
                                        @error('image')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputName1">Nama</label>
                                        <input type="text" class="form-control" id="exampleInputName" name="nama"
                                            value="{{ $data->name }}" placeholder="Enter nama">
                                        @error('nama')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputnidn1">NIDN</label>
                                        <input type="nidn" class="form-control" id="exampleInputnidn1" name="nidn"
                                            placeholder="Enter nidn" value="{{ $data->nidn }}">
                                        @error('nidn')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" name="email"
                                            value="{{ $data->email }}" placeholder="Enter email">
                                        @error('email')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1"
                                            name="password" placeholder="New Password">
                                        @error('password')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <input type="hidden" name="id_level"value="{{ $data->id_level }}">
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary width:100px;">Simpan</button>
                                </div>


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
