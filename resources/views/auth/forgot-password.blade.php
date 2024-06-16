<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sibeka | Fortgot Password</title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="{{ asset('lte/plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lte/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lte/dist/css/adminlte.min.css') }}">
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="card card-outline card-primary">
            <div class="card-header text-center mt-2">
                <img src="{{ asset('img/logo.jpg') }}" alt="" width="80px">
            </div>
            <div class="card-body">
                <p class="login-box-msg">Enter your registered E-mail</p>

                <form action="{{ route('forgot-password-proses') }}" method="post">
                    @csrf
                    <div class="input-group mb-3 ">
                        <input type="email" name="email" class="form-control" placeholder="Email"
                            value="{{ old('email') }}">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    @error('email')
                        <small style="color:red;">{{ $message }}</small>
                    @enderror
                    <div class="row mt-2 ">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary btn-block">Submit</button>
                        </div>
                    </div>
                    <p class=" mt-2">
                        Have account ? <a href="{{ route('login') }}">Login here</a>
                    </p>
                </form>
            </div>
        </div>
    </div>

    <script src="{{ asset('lte/plugins/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('lte/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('lte/dist/js/adminlte.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    @if ($message = Session::get('failed'))
        <script>
            swal('{{ $message }}', 'Periksa kembali');
        </script>
    @endif

    @if ($message = Session::get('success'))
        <script></script>
        <script>
            swal('{{ $message }}');
        </script>
    @endif
</body>

</html>
