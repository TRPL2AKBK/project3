<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Berita Acara Verifikasi RPS</title>
    <style>
        body {
            font-family: 'Times New Roman', Times, serif;
            margin: 40px;
        }

        .content {
            margin: 0 auto;
            max-width: 800px;
        }

        .header,
        .footer {
            text-align: center;
            margin-bottom: 10px;
        }

        .header h4 {
            margin-bottom: 0;
            margin-top: 0;
        }

        .header p {
            margin-top: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px;
            overflow-x: auto;
            /* Membuat tabel dapat di-scroll horizontal jika perlu */
        }

        th,
        td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        td h4 {
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
            text-align: center;
        }

        /* .signature {
            margin-top: 40px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .signature .mengetahui {
            margin-top: 40px;
            text-align: center;
            flex-basis: 100%;
        }

        .signature .mengetahui p {
            white-space: nowrap;
        }

        .signature div {
            text-align: center;
        } */
        .signature {
            margin-top: 40px;
        }

        .signature div {
            display: inline-block;
            width: 30%;
            text-align: center;
            white-space: nowrap;
            /* overflow: hidden; */
            text-overflow: ellipsis;


        }

        .logo {
            float: left;
            width: 90px;
            /* Adjust the width as needed */
            height: auto;
        }
    </style>
</head>

<body>
    <div class="content">
        <div class="header">
            <table>
                <tr>
                    <td>
                        <img src="https://tse3.mm.bing.net/th?id=OIP.gys9HQ3QdfNcnJPEz6O85wHaHa&pid=Api&P=0&h=220"
                            alt="Logo" class="logo">
                        <h4 style="margin-right :80px; margin-top: 10px">
                            KEMENTRIAN PENDIDIKAN DAN KEBUDAYAAN <br>
                            POLITEKNIK NEGERI PADANG <br>
                            PUSAN PENINGKATAN DAN PENGEMBANGAN AKTIVITAS <br>
                            INTRUKSIONAL (P3AI)
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 style="margin-top: -5px; margin-bottom: -5px;">
                            FORMULIR
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 style="text-transform: uppercase;">VERIFIKASI RENCANA PEMBELAJARAN SEMESTER <br>
                            JURUSAN : TEKNOLOGI INFORMASI PROGRAM STUDI : {{ $kaprodi->prodi }}</h4>
                    </td>
                </tr>
            </table>
        </div>
        <p>Telah dilaksanakan rapat Peninjauan materi RPS besama KBK dan Kaprodi yang dilaksanakan pada:</p>
        <p>Hari / Tanggal : Selasa / 14 Februari 2023</p>
        <p>Tempat : Ruang TUK / E305</p>
        <p>dengan hasil sebagai berikut:</p>

        <table>
            <tr>
                <th>No</th>
                <th>Semester</th>
                <th>Nama Matkul</th>
                {{-- <th>KBK</th> --}}
                <th>Evaluasi</th>
            </tr>
            @foreach ($dataVerif as $data)
                <tr>
                    {{-- @php
                        function angkaKeRomawi($angka)
                        {
                            $nilai = [
                                'M' => 1000,
                                'CM' => 900,
                                'D' => 500,
                                'CD' => 400,
                                'C' => 100,
                                'XC' => 90,
                                'L' => 50,
                                'XL' => 40,
                                'X' => 10,
                                'IX' => 9,
                                'V' => 5,
                                'IV' => 4,
                                'I' => 1,
                            ];
                            $romawi = '';
                            while ($angka > 0) {
                                foreach ($nilai as $rom => $nilai_rom) {
                                    if ($angka >= $nilai_rom) {
                                        $angka -= $nilai_rom;
                                        $romawi .= $rom;
                                        break;
                                    }
                                }
                            }
                            return $romawi;
                        }
                        function angkaKeTeks($angka)
                        {
                            switch ($angka) {
                                case 1:
                                    return 'satu';
                                case 2:
                                    return 'dua';
                                case 3:
                                    return 'tiga';
                                case 4:
                                    return 'empat';
                                case 5:
                                    return 'lima';
                                case 6:
                                    return 'enam';
                                case 7:
                                    return 'tujuh';
                                case 8:
                                    return 'delapan';
                                default:
                                    return 'lainnya';
                            }
                        }
                    @endphp --}}

                    <td style="text-align: center"> {{ $loop->iteration }} </td>
                    <td>
                        {{-- {{ $data->rps->matakuliah->semester }} --}}
                        {{ \App\Helpers\NumberHelper::angkaKeRomawi($data->rps->matakuliah->semester) }}
                        ({{ \App\Helpers\NumberHelper::angkaKeTeks($data->rps->matakuliah->semester) }})
                    </td>
                    <td> {{ $data->rps->matakuliah->nama_matakuliah }} </td>
                    {{-- <td> {{ $data->rps->matakuliahkbk->id_kbk }} </td> --}}
                    <td> {{ $data->evaluasi }} </td>
                </tr>
            @endforeach
        </table>

        <div class="signature">
            <div style="float:left">
                <p>Menyetujui,</p>
                <p>Kaprodi</p>
                <br><br><br>
                {{-- @foreach ($kaprodi as $kp) --}}
                <p>{{ $kaprodi->nama }}</p>
                {{-- @endforeach --}}
            </div>
            <div style="float:right;">
                <p>Ketua KBK</p>
                <p style="font-style: italic;">{{ $kbk->nama_kbk }}</p>
                <br><br><br>
                <p>{{ $kbk->ketua->dosen->nama }}</p>
            </div>
            <div style="margin-top: 200px;">
                <p>Mengetahui,</p>
                <br><br><br>
                @foreach ($kajur as $kj)
                    <p>{{ $kj->nama }}</p>
                @endforeach
            </div>
        </div>
</body>

</html>
