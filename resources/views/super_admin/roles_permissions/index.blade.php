@extends('layout.main')
@section('title', 'User Role ')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Role and Permission Management</h1>
                    </div>
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Role and Permission Management</li>
                        </ol> --}}
                    </div>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th style="width: 1rem">No</th>
                                                <th>Name</th>
                                                <th>Roles</th>
                                                <th>Permissions</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($users as $user)
                                                <tr>
                                                    <td> {{ $loop->iteration }} </td>
                                                    {{-- <td>{{ $user->dosen->nama }}</td> --}}
                                                    <td>{{ $user->name }}</td>
                                                    <td>
                                                        @foreach ($user->roles as $role)
                                                            <span class="badge badge-primary">{{ $role->name }}</span>
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                        @foreach ($user->permissions as $permission)
                                                            <span class="badge badge-success">{{ $permission->name }}</span>
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                        <!-- Edit button -->
                                                        <button type="button" class="btn btn-sm btn-warning"
                                                            data-toggle="modal"
                                                            data-target="#editModal{{ $user->id }}">Edit</button>

                                                        <!-- Delete button -->
                                                        <form action="{{ route('deleteUserRolesPermissions', $user->id) }}"
                                                            method="POST" style="display:inline;">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="submit" class="btn btn-sm btn-danger"
                                                                onclick="return confirm('Are you sure?')">Delete</button>
                                                        </form>
                                                    </td>
                                                </tr>

                                                <!-- Edit Modal -->
                                                <div class="modal fade" id="editModal{{ $user->id }}" tabindex="-1"
                                                    role="dialog" aria-labelledby="editModalLabel{{ $user->id }}"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title"
                                                                    id="editModalLabel{{ $user->id }}">Edit Roles and
                                                                    Permissions for {{ $user->name }}</h5>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form
                                                                    action="{{ route('updateUserRolesPermissions', $user->id) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('PUT')
                                                                    <div class="form-group">
                                                                        <label for="roles">Roles:</label>
                                                                        <select name="roles[]" id="roles"
                                                                            class="form-control" multiple>
                                                                            @foreach ($roles as $role)
                                                                                <option value="{{ $role->name }}"
                                                                                    {{ $user->roles->contains($role) ? 'selected' : '' }}>
                                                                                    {{ $role->name }}</option>
                                                                            @endforeach
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="permissions">Permissions:</label>
                                                                        <select name="permissions[]" id="permissions"
                                                                            class="form-control" multiple>
                                                                            @foreach ($permissions as $permission)
                                                                                <option value="{{ $permission->name }}"
                                                                                    {{ $user->permissions->contains($permission) ? 'selected' : '' }}>
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
