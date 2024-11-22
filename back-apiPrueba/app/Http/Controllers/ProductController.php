<?php

namespace App\Http\Controllers;

use App\Http\Requests\Product\ProductUpdateRequest;
use App\Http\Requests\Product\ProductStoreRequest;

use App\Models\Product;
use App\Models\User;

use Illuminate\Http\Request;
use App\Http\Resources\ProductResource;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductController extends Controller
{
    public function product_list()
    {
        return Product::all();
    }

    public function store(User $user, ProductStoreRequest $request) : JsonResponse
    {

		$result = Product::create([
            'title' => $request->title,
            'description' => $request->description,
            'user_id' => $user->id
        ]);
        return response()->json([
            'success' => true,
            'message' => 'Registro insertado',
            'data' => new ProductResource($result)
        ], 201);
    }

    public function update(ProductUpdateRequest $request,$id) : JsonResponse
    {
        $result = Product::where('id',$id)
                ->update([
                        'title' => $request->title,
                        'description' => $request->description
                    ]);

        return response()->json([
            'success' => true,
            'message' => 'Actualizado',
            'data' => $result
        ]);
    }

    public function destroy($id) : JsonResponse
    {
        $result = Product::where('id',$id)->delete();

        return response()->json([
            'success' => true,
            'message' => 'Eliminado!',
            'data' => $result
        ]);
    }

}