@extends('layouts.admin')

@section('title')
    Tools - Admin panel
@endsection

@section('content')
    <i class="fas fa-table"></i>
    Alati Tabela </div>
    <div class="container-fluid">

        <div class="card-body">
            <div class="table-responsive col-md-13">
                <table class="table">
                    <thead>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Price Site</th>
                    <th>Image</th>
                    <th>Action</th>
                    </thead>
                    <tbody class="tool-table">
                    @foreach($tools as $tool)

                    <tr>
                        <td>{{ $tool->toolID }}</td>
                        <td>{{ $tool->name }}</td>
                        <td>{{ Str::limit($tool->description, 100) }}</td>
                        <td>{{ $tool->price }} dinara</td>
                        <td>{{ $tool->sitePrice }} dinara</td>
                        <td><img class="admin-img" src="{{ url($tool->imgSrc) }}" alt="{{ $tool->imgAlt }}"></td>
                        <td>

                            <button class="btn btn-danger delete-tool" data-id="{{ $tool->toolID }}">Delete</button>
                        <td><button class="btn btn-danger edit-tool" data-id="{{ $tool->toolID }}">Edit</button></td>

                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
                <div class="col-md-3 mb-3">
                    <input type="hidden" id="hdnToolID" />

                    <label>Tool name</label>
                    <input type="text" class="form-control" id="name">

                    <label>Tool description</label>
                    <input type="text" class="form-control" id="description">

                    <label>Tool price</label>
                    <input type="text" class="form-control" id="price">

                    <label>Tool site price</label>
                    <input type="text" class="form-control" id="priceSite">

                    <label>Tool src</label>
                    <input type="text" class="form-control" id="imgSrc">

                    <label>Tool alt</label>
                    <input type="text" class="form-control" id="imgAlt">

                    <button class="btn btn-primary my-3 insert-tool">Insert</button>
                    <button class="btn btn-primary my-3 update-tool">Update</button>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>

    </div>
    </div>


    </div>
    </div>

@endsection

