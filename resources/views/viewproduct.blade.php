@extends('layouts.app')




@section('content')
    <div class="container">
        {{ $data->name }}
        {{ $data->description }}

        <iframe height="400" width="400" src="/assets/{{ $data->file }}"></iframe>




    </div>


@endsection
