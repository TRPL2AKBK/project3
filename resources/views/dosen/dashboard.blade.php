@extends('layout.main')
@section('title', 'Dosen Dashboard')
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
                            <li class="breadcrumb-item active">Dashboard</li>
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
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>{{ $dataRps->count() }}</h3>
                                <p>RPS yang diupload</p>
                                @php
                                    $countWithEvaluasi = 0;
                                @endphp
                                @foreach ($dataRps as $rps)
                                    @if (!is_null($rps->evaluasi))
                                        @php
                                            $countWithEvaluasi++;
                                        @endphp
                                    @endif
                                @endforeach
                                <h3>{{ $countWithEvaluasi }}</h3>
                                <p>Diverifikasi</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-file"></i>
                            </div>
                            <a href="{{ route('verifikasi.rps') }}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>{{ $dataSoal->count() }}</h3>
                                <p>Soal yang diupload</p>
                                @php
                                    $countWithEvaluasi = 0;
                                @endphp
                                @foreach ($dataSoal as $soal)
                                    @if (!is_null($soal->evaluasi))
                                        @php
                                            $countWithEvaluasi++;
                                        @endphp
                                    @endif
                                @endforeach
                                <h3>{{ $countWithEvaluasi }}</h3>
                                <p>Diverifikasi</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-file"></i>
                            </div>
                            <a href="{{ route('verifikasi.soal') }}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3>{{ $matakuliah->count() }}</h3>
                                <p>Matakuliah Ampu</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>65</h3>

                                <p>Lorem ipsum</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
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
