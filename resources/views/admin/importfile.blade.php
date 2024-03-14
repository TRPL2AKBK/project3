@extends('layout.main')
@section('content')
    <section class="content ">
        <div class="container" style="float: right
        ">
            <div class="row">
                <div class="col-12">
                    @if (session('status'))
                        <div class="alert alert-succes">{{ session('status') }}</div>
                    @endif

                    {{-- import dari excel --}}
                    <form action="{{ route('admin.user.import') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="card_body">
                            <label for="exampleInputName1">Import data dari excel</label>
                            <div class="form-group">
                                <input type="file" name="import_file" />
                                <button type="submit" class="btn btn-primary">Import</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </section>
@endsection
