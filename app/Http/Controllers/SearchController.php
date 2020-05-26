<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SearchModel;
use Google_Client;

class SearchController extends Controller
{

    public function search()
    {
        $array = [
            'title' => $_POST['title'],
            'id' => 0
        ];

        $results = SearchModel::RequestUrl($array);
        
        if($results)
        {
            return view('result', ['results' => $results]);
        }else {
            abort(404);
        }
    }

    public function show($id) 
    { 
        $array = [
            'title' => "",
            'id' => $id
        ];

        $results = SearchModel::RequestUrl($array)->items;
        
        return view('view', ['results' => $results]);
        
    }

    public function favoriteadd()
    {
        return var_dump($_POST);
    }
}
