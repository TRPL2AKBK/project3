@extends('layout.main')
@section('title', 'Tambah User')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Data User</h1>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('user.store') }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Tambah User</h3>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="exampleInputName">Nama</label>
                                        <input type="text" class="form-control" id="exampleInputName" name="nama"
                                            placeholder="Enter nama" value="{{ old('nama') }}">
                                        @error('nama')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail">Email</label>
                                        <input type="email" class="form-control" id="exampleInputEmail" name="email"
                                            placeholder="Enter email" value="{{ old('email') }}">
                                        @error('email')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputNIDN">NIDN</label>
                                        <input type="text" class="form-control" id="exampleInputNIDN" name="nidn"
                                            placeholder="Enter nidn" value="{{ old('nidn') }}">
                                        @error('nidn')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword"
                                            name="password" placeholder="Password" value="{{ old('password') }}">
                                        @error('password')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleRole">Role</label>
                                        <select multiple name="roles[]" id="exampleRole" class="form-control">
                                            <option value="" disabled selected>Select Role</option>
                                            @foreach ($roles as $role)
                                                <option value="{{ $role->name }}">{{ $role->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
@endsection
