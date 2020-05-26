<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Favorite;

class FavoriteController extends Controller
{
    public function insert(Request $request)
    {      
        $data = Favorite::find([
            "user_id" => $_POST['user_id'],
            "video_id" => $_POST['video_id'],
            "video_title" => $_POST['video_title'],
            "video_image" => $_POST['video_image']
        ]);

        if($data){
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
        Favorite::where('video_id', '=', [$id])->delete();
        header('home');
    }
}
