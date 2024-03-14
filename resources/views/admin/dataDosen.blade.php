@extends('layout.main')
@section('title', 'Data Dosen')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dashboard</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard v1</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">

                        {{-- Table Dosen --}}
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Data Dosen</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table id="example" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama</th>
                                            <th>NIDN</th>
                                            <th>NIP</th>
                                            <th>Gender</th>
                                            <th>Prodi</th>
                                            <th>Bidang</th>
                                            <th>email</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {{-- @foreach ($dataDosen as $index => $d) --}}
                                        @foreach ($dosen as $d)
                                            <tr>
                                                {{-- <td> {{ $dataDosen->firstitem() + $index }} </td> --}}
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $d->name }} </td>
                                                <td> {{ $d->nidn }} </td>
                                                <td> {{ $d->nip }} </td>
                                                <td> {{ $d->gender }} </td>
                                                <td> {{ $d->prodi->prodi }} </td>
                                                <td> {{ $d->id_bidang }} </td>
                                                <td> {{ $d->email }} </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>

                                {{-- <div class="card-footer">
                                    <div style=" float: left;">
                                        Showing
                                        {{ $dataDosen->firstitem() }}
                                        to
                                        {{ $dataDosen->lastitem() }}
                                        of
                                        {{ $dataDosen->total() }}
                                        entries
                                    </div>
                                    <div style=" float: right;">
                                        {{ $dataDosen->links() }}
                                    </div>
                                </div> --}}
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.Table Dosen -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
