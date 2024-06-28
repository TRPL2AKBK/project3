@extends('layout.main')
@section('title', 'Dosen Pengampu')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dosen Pengampu</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dosen Pengampu</li>
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
                                <h3 class="card-title mt-2">Dosen Pengampu</h3>
                            </div>
                            <div class="card-body table-responsive ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>Dosen</th>
                                            <th>Mata Kuliah</th>
                                            <th>Tahun/Semester</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        @if (auth()->user()->id_level == 1)
                                            <!-- Admin bisa melihat semua data -->
                                            @php
                                                $counter = 0;
                                            @endphp

                                            @foreach ($pengampu as $p)
                                                @php
                                                    $counter++;
                                                @endphp
                                                <tr>
                                                    <td>{{ $counter }}</td>
                                                    <td>{{ $p->dosen->nama }}</td>
                                                    <td>{{ $p->matakuliah ? $p->matakuliah->nama_matakuliah : 'Data matakuliah kosong' }}
                                                    </td>
                                                    <td>{{ $p->tahun->smt_thn_akd }}</td>
                                                </tr>
                                            @endforeach
                                        @else
                                            <!-- Non-admin (dosen) hanya bisa melihat data yang sesuai dengan nidn mereka -->
                                            @php
                                                $counter = 0;
                                            @endphp

                                            @foreach ($pengampu as $p)
                                                @if ($p->dosen && $p->dosen->nidn == Auth::user()->nidn)
                                                    @php
                                                        $counter++;
                                                    @endphp
                                                    <tr>
                                                        <td>{{ $counter }}</td>
                                                        <td>{{ $p->dosen->nama }}</td>
                                                        <td>{{ $p->matakuliah ? $p->matakuliah->nama_matakuliah : 'Data matakuliah kosong' }}
                                                        </td>
                                                        <td>{{ $p->tahun->smt_thn_akd }}</td>
                                                    </tr>
                                                @endif
                                            @endforeach
                                        @endif

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        {{-- /Table Prodi --}}
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
