<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
</head>

<body>
    <p>Silakan klik link di bawah ini untuk mereset password Anda:</p>

    <a href="{{ route('validasi-forgot-password', ['token' => $token]) }}">Klik Disini</a>
    {{-- @dd($token) --}}
</body>

</html>
