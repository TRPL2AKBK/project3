<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sibeka | Home</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            height: 100vh;
            background-image: url('img/bg3.png');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            position: relative;
            overflow: hidden;
        }

        .img {
            width: 200px;
            position: absolute;
            top: 15px;
            left: 15px;
            z-index: 2;
        }

        h1 {
            color: #fff;
            font-size: 50px;
            text-transform: uppercase;
            font-weight: bold;
        }

        p {
            color: #ccc;
            font-size: 16px;
        }

        .btn-custom {
            background-color: #2E3951;
            color: #eef6ff;
            border-radius: 50px;
            z-index: 2;
        }

        .btn-custom:hover {
            background-color: #4285b3;
        }

        .login-button {
            background-color: #eef6ff;
            color: #2E3951;
            border-radius: 50px;
            z-index: 2;
        }

        .login-button:hover {
            background-color: #8f9294;
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 35px;
            }

            p {
                font-size: 14px;
            }
        }

        .content-wrapper {
            margin-top: 100px;
            /* Geser ke bawah */
            margin-left: 100px;
            /* Geser ke kanan */
            position: relative;
            z-index: 2;
        }

        .info-section {
            background-color: #eef6ff;
            padding: 20px;
            border-radius: 8px;
            margin-top: 30px;
            margin-bottom: 20px;
        }

        .info-box {
            background-color: #7f8fa6;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
            color: #fff;



        }

        .info-box h3 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .info-box p {
            font-size: 14px;
        }

        .info-box ul {
            list-style: none;
            padding: 0;
        }

        .info-box ul li {
            margin-bottom: 10px;
        }

        .info-box ul li::before {
            content: "•";
            color: #eef6ff;
            margin-right: 5px;
        }
    </style>
</head>

<body>
    <div class="container-fluid">
        <div class="d-flex justify-content-end align-items-center p-3">
            <a href="{{ route('login') }}" class="btn login-button ">Sign In</a>
            {{-- <a href="#" class="btn btn-custom">Sign Up</a> --}}
        </div>
    </div>
    <img src="img/logo1.png" class="img" alt="Sibeka">
    <div class="container">
        <div class="info-section">
            <h2>Selamat datang di Sistem Informasi Manajemen KBK. Sistem ini dirancang untuk mempermudah akses dan
                pengelolaan informasi terkait Kelompok Bidang Keahlian (KBK), Rencana Pembelajaran Semester (RPS),
                dan
                Soal Ujian Akhir Semester (UAS). Sistem ini akan membantu dosen dan staf KBK dalam dalam mengelola
                KBK
                dengan lebih efisien dan efektif.</h2>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="info-box">
                    <h3>Informasi Kelompok Bidang Keahlian (KBK)</h3>
                    <p>Deskripsi: Bagian ini menyediakan informasi lengkap tentang berbagai Kelompok Bidang Keahlian
                        (KBK) yang ada di Jurusan Teknologi Informasi. Anda dapat melihat daftar KBK, anggota, dan
                        kegiatan yang terkait dengan setiap KBK.</p>
                    <h4>Fitur:</h4>
                    <ul>
                        <li>Lihat Daftar KBK</li>
                        {{-- <li>Detail KBK</li> --}}
                        <li>Manajemen Anggota KBK</li>
                        <li>Tambah KBK Baru</li>
                        <li>Edit Informasi KBK</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="info-box">
                    <h3>Rencana Pembelajaran Semester (RPS)</h3>
                    <p>Deskripsi: Bagian ini memudahkan pengelolaan Rencana Pembelajaran Semester (RPS) untuk setiap
                        mata kuliah. Informasi yang tersedia mencakup tujuan, materi, metode pembelajaran, dan
                        jadwal
                        perkuliahan.</p>
                    <h4>Fitur:</h4>
                    <ul>
                        <li>Lihat Daftar RPS</li>
                        {{-- <li>Detail RPS</li> --}}
                        <li>Tambah RPS Baru</li>
                        <li>Edit RPS</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="info-box">
                    <h3>Soal Ujian Akhir Semester (UAS)</h3>
                    <p>Deskripsi: Bagian ini menyediakan akses dan manajemen untuk soal-soal Ujian Akhir Semester
                        (UAS).
                        Informasi yang disediakan termasuk jenis soal, format ujian, dan petunjuk pengerjaan.</p>
                    <h4>Fitur:</h4>
                    <ul>
                        <li>Lihat Daftar Soal UAS</li>
                        {{-- <li>Detail Soal UAS</li> --}}
                        <li>Tambah Soal UAS Baru</li>
                        <li>Edit Soal UAS</li>
                    </ul>
                </div>
            </div>
        </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
