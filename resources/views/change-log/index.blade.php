<!-- resources/views/change-log/index.blade.php -->

@extends('layout.main')
@section('title', 'Riwayat perubahan data User')
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
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Verifikasi RPS</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header mb-1">
                                <h3 class="card-title mt-2">Riwayat perubahan data User</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive ">
                                {{-- <table id="example" class="table table-bordered table-striped"> --}}

                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>User</th>
                                            <th>Changes</th>
                                            <th>Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($changeLogs as $changeLog)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td>{{ $changeLog->user->name }}</td>
                                                <td>
                                                    <ul>
                                                        @foreach (json_decode($changeLog->changes) as $field => $change)
                                                            <li>{{ $field }}: {{ $change->old_value }} ->
                                                                {{ $change->new_value }}</li>
                                                        @endforeach
                                                    </ul>
                                                </td>
                                                <td>{{ $changeLog->created_at }}</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
                <!-- /.row (main row) -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
