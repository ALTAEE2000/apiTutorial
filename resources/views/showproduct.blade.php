@extends('layouts\app')



@section('content')

    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">name</th>
                    <th scope="col">Description</th>
                    <th scope="col">file</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $data)
                    <tr>
                        <td>{{ $data->name }}</td>
                        <td>{{ $data->description }}</td>
                        <td><a href="{{ url('/view', $data->id) }}">View</a></td>
                        <td><a href="{{ url('/download', $data->file) }}">dwonload</a></td>
                    </tr>
                @endforeach

            </tbody>
        </table>

    </div>


@endsection
