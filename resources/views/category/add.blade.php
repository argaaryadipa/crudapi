@extends('template')

@section('content')

<div class="container">
<div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <br>
      <h2>Add Data <b>Category</b></h2>
     </div>
     </div>
     </div>

    <form action="{{ route('category.save') }}" method="post">

        @csrf

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" class="form-control">
        </div>
        {{-- <div class="form-group">
            <label>Deskripsi</label>
            <input type="text" name="name" class="form-control">
        </div> --}}

        <input type="submit" name="submit" value="Save Data" class="btn btn-primary">
        <a class="btn btn-secondary" href="{{ route('category.index') }}">Cancel</a>

    </form>



  </div>


@endsection