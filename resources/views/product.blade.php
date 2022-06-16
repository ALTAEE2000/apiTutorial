@extends( 'layouts.app')



@section('content')
    <div class="container">

        <form action="{{ url('uploadproduct') }}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="mb-3">
                <label for="">name</label>
                <input name="name" id="name" type="text" class="form-control" id="exampleInputEmail1">
            </div>

            <div class="mb-3">
                <label for="" class="form-label">description</label>
                <input type="text" class="form-control" name="description" id="description">
            </div>

            <div class="mb-3">
                <label for="" class="form-label">file</label>
                <input type="file" name="file" class="form-control" id="file">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

    </div>


@endsection
