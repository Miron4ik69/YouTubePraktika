<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Favorite;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{
    public function insert(Request $request)
    {      
        $data = Favorite::where([
            "user_id" => $_POST['user_id'],
            "video_id" => $_POST['video_id'],
            "video_title" => $_POST['video_title'],
            "video_image" => $_POST['video_image']
        ])->exists();

        if($data == null){
            Favorite::insert([
                "user_id" => $_POST['user_id'],
                "video_id" => $_POST['video_id'],
                "video_title" => $_POST['video_title'],
                "video_image" => $_POST['video_image']
            ]); 
        }        
    }

    public function destroy($id)
    {
        Favorite::where([
            'video_id' => $id,
            'user_id' => Auth::id()
        ])->delete();

        return redirect('home');
    }
}
