@extends('layout.main')
@section('title', 'Role Management')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Role Management</h1>
                    </div>
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Role Management</li>
                        </ol> --}}
                    </div>
                </div>
            </div>
        </div>

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header mb-3">
                                <h3 class="card-title mt-2">Data Role</h3>
                                <button type="button" class="btn btn-primary float-right" data-toggle="modal"
                                    data-target="#addRoleModal">
                                    Tambah Role
                                </button>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th style="width: 1rem">No</th>
                                                <th>Role</th>
                                                <th>Permissions</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($roles as $role)
                                                <tr>
                                                    <td> {{ $loop->iteration }} </td>
                                                    <td>{{ $role->name }}</td>
                                                    <td>
                                                        @foreach ($role->permissions as $permission)
                                                            <span class="badge badge-success">{{ $permission->name }}</span>
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-sm btn-warning"
                                                            data-toggle="modal"
                                                            data-target="#editModal{{ $role->id }}">Edit</button>
                                                        <button type="button" class="btn btn-sm btn-danger"
                                                            data-toggle="modal"
                                                            data-target="#modal-hapus{{ $role->id }}">Hapus</button>
                                                    </td>
                                                </tr>
                                                <div class="modal fade" id="modal-hapus{{ $role->id }}">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title">Konfirmasi Hapus Data</h4>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Apakah kamu yakin ingin menghapus role
                                                                    <b>{{ $role->name }}</b>
                                                                </p>
                                                            </div>
                                                            <div class="modal-footer justify-content-between">
                                                                <form
                                                                    action="{{ route('role_management.delete', ['id' => $role->id]) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="button" class="btn btn-default"
                                                                        data-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn btn-primary">Ya,
                                                                        Hapus</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <!-- /.modal-content -->
                                                    </div>
                                                    <!-- /.modal-dialog -->
                                                </div>
                                                <!-- Modal Tambah Role -->
                                                <div class="modal fade" id="addRoleModal" tabindex="-1" role="dialog"
                                                    aria-labelledby="addRoleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="addRoleModalLabel">Tambah Role
                                                                    Baru</h5>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <form action="{{ route('role_management.store') }}"
                                                                method="POST">
                                                                @csrf
                                                                <div class="modal-body">
                                                                    <div class="form-group">
                                                                        <label for="role_name">Nama Role:</label>
                                                                        <input type="text" class="form-control"
                                                                            id="role_name" name="role_name" required>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="permissions">Permissions:</label>
                                                                        <select name="permissions[]" id="permissions"
                                                                            class="form-control" multiple required>
                                                                            @foreach ($permissions as $permission)
                                                                                <option value="{{ $permission->id }}">
                                                                                    {{ $permission->name }}</option>
                                                                            @endforeach
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="submit"
                                                                        class="btn btn-primary">Simpan</button>
                                                                    <button type="button" class="btn btn-secondary"
                                                                        data-dismiss="modal">Batal</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                {{-- edit role permission --}}
                                                <div class="modal fade" id="editModal{{ $role->id }}" tabindex="-1"
                                                    role="dialog" aria-labelledby="editModalLabel{{ $role->id }}"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title"
                                                                    id="editModalLabel{{ $role->id }}">Edit
                                                                    Permissions
                                                                    for {{ $role->name }}</h5>
                                                                <button type="button" class="close"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form
                                                                    action="{{ route('role_management.update', $role->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('PUT')
                                                                    <div class="form-group">
                                                                        <label for="permissions">Permissions:</label>
                                                                        <select name="permissions[]" id="permissions"
                                                                            class="form-control" multiple>
                                                                            @foreach ($permissions as $permission)
                                                                                <option value="{{ $permission->name }}"
                                                                                    {{ $role->permissions->contains($permission) ? 'selected' : '' }}>
                                                                                    {{ $permission->name }}</option>
                                                                            @endforeach
                                                                        </select>
                                                                    </div>
                                                                    <button type="submit" class="btn btn-primary">Save
                                                                        changes</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
