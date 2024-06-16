@extends('layout.main')
@section('title', 'Verifikasi RPS')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Verifikasi RPS</h1>
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
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        {{-- Table Prodi --}}
                        <div class="card">
                            <div class="card-header mb-3">
                                <h3 class="card-title mt-2">Verifikasi RPS</h3>
                            </div>
                            <div class="card-body ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            {{-- @if (auth()->user()->id_level == 1) --}}
                                            <th style="width: 1rem">No</th>
                                            <th>Matakuliah</th>
                                            <th>Pengembang</th>
                                            <th>Dokumen</th>
                                            <th>Verifikator 1</th>
                                            <th>Verifikator 2</th>
                                            {{-- @elseif(auth()->user()->id_level == 2 || auth()->user()->id_level == 3) --}}
                                            <!-- Tampilkan kolom aksi di sini -->
                                            <th>Aksi</th>
                                            {{-- @endif --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($verifData as $p)
                                            <tr>
                                                {{-- @if (auth()->user()->id_level == 1) --}}
                                                <td> {{ $loop->iteration }} </td>
                                                <td>{{ $p->rps->matakuliah->nama_matakuliah }}</td>
                                                <td>{{ $p->rps->pengembang->nama }}</td>
                                                {{-- <td> {{ $p->id_rps }} </td> --}}
                                                <td> <a href={{ asset('storage/' . $p->rps->dokumen) }} target="_blank"
                                                        class="btn btn-primary">view</a> </td>
                                                <td>
                                                    @if (!$p->status1)
                                                        <span>{{ 'Belum diverifikasi' }}</span> <br>
                                                    @else
                                                        Nama : {{ $p->verif1->dosen->nama ?? 'Belum diverifikasi' }} <br>
                                                        @if ($p->status1 == 'terima')
                                                            Status : <span style="color:green;">{{ $p->status1 }}</span>
                                                            <br>
                                                        @elseif($p->status1 == 'tolak')
                                                            Status : <span style="color:red;">{{ $p->status1 }}</span>
                                                            <br>
                                                        @elseif($p->status1 == 'revisi')
                                                            Status : <span style="color:orange;">{{ $p->status1 }}</span>
                                                            <br>
                                                        @else
                                                            <span>Status : </span> <br>
                                                        @endif
                                                        Komentar : {{ $p->komentar1 }} <br>
                                                        Tanggal : {{ $p->tanggal1 }}
                                                    @endif
                                                </td>
                                                <td>
                                                    @if (!$p->status2)
                                                        <span>{{ 'Belum diverifikasi' }}</span> <br>
                                                    @else
                                                        Nama : {{ $p->verif2->dosen->nama ?? 'Belum diverifikasi' }} <br>
                                                        @if ($p->status2 == 'terima')
                                                            Status : <span style="color:green;">{{ $p->status2 }}</span>
                                                            <br>
                                                        @elseif($p->status2 == 'tolak')
                                                            Status : <span style="color:red;">{{ $p->status2 }}</span>
                                                            <br>
                                                        @elseif($p->status2 == 'revisi')
                                                            Status : <span
                                                                style="color:orange;">{{ $p->status2 }}</span><br>
                                                        @else
                                                            <span>Status : </span> <br>
                                                        @endif
                                                        Komentar : {{ $p->komentar2 }} <br>
                                                        Tanggal : {{ $p->tanggal2 }}
                                                    @endif
                                                </td>
                                                {{-- @elseif(auth()->user()->id_level == 2 || auth()->user()->id_level == 3) --}}
                                                <td>
                                                    <a
                                                        href="{{ route('verifikasi.verifrps.edit', ['id' => $p->id_verif_rps]) }}"class="btn btn-primary">
                                                        Verifikasi</a>
                                                </td>
                                                {{-- @endif --}}
                                            </tr>
                                        @endforeach
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
