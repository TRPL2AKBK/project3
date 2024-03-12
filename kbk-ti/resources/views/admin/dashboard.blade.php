@extends('layout.main')
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
                                <table id="example1" class="table table-bordered table-striped">
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
                                        @foreach ($dataDosen as $index => $d)
                                            <tr>
                                                <td> {{ $dataDosen->firstitem() + $index }} </td>
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
                                <div class="card-footer">

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
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>

                        <!-- /.Table Dosen -->

                        {{-- Table Prodi --}}
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Data Prodi</h3>
                            </div>
                            <div class="card-body table-responsive p-0">
                                {{-- <table class="table table-hover text-nowrap"> --}}
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Kode Prodi</th>
                                            <th>Prodi</th>
                                            <th>Jurusan</th>
                                            <th>Jenjang</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($dataProdi as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->kode_prodi }} </td>
                                                <td> {{ $p->prodi }} </td>
                                                <td> {{ $p->jurusan->jurusan }} </td>
                                                <td> {{ $p->jenjang }} </td>
                                                <td>
                                                    <a
                                                        href="{{ route('admin.prodi.edit', ['id' => $p->id]) }}"class="btn btn-primary"><i
                                                            class="fas fa-pen"></i> Edit</a>
                                                    <a data-toggle="modal" data-target="#modal-hapus{{ $p->id }}"
                                                        class="btn btn-danger"><i class="fas fa-trash-alt"></i> Hapus</a>
                                                </td>
                                            </tr>
                                            <div class="modal fade" id="modal-hapus{{ $p->id }}">
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
                                                            <p>Apakah kamu yakin ingin menghapus data Prodi
                                                                <b>{{ $p->prodi }}</b>
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <form
                                                                action="{{ route('admin.prodi.delete', ['id' => $p->id]) }}"
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
                                            <!-- /.modal -->
                                        @endforeach
                                    </tbody>
                                </table>

                            </div>
                        </div>
                        {{-- /Table Dosen --}}


                        {{-- =========================== --}}
                        {{-- @include('admin.datauser') --}}

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
