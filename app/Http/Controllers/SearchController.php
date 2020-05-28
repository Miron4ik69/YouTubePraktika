<?php

namespace App\Http\Controllers;

use App\Favorite;
use Illuminate\Http\Request;
use App\SearchModel;
use App\QuerySearch;
use Facade\Ignition\QueryRecorder\Query;
use Illuminate\Support\Facades\Auth;

class SearchController extends Controller
{

    public function search() //Search controller
    {
        $array = [
            'title' => $_POST['title'],
            'id' => 0
        ];

        function insertQuery($items) // insert Query to db
        {
            foreach($items->items as $item){
                QuerySearch::insert([
                    'query' => $_POST['title'],
                    'video_id' => $item->id->videoId,
                    'video_title' => $item->snippet->title,
                    'video_description' => $item->snippet->description,
                    'video_image' => $item->snippet->thumbnails->high->url,
                    'video_date' => $item->snippet->publishedAt,
                    'video_channel' => $item->snippet->channelTitle
                ]);
            }     
        } 

        $resultsDB = QuerySearch::where('query', $array['title'])->exists(); //check for writing to the db
               
        if($resultsDB == null)
        {         
            $resultsJson = SearchModel::RequestUrl($array);  
            insertQuery($resultsJson); 

            foreach($resultsJson->items as $res){  

                $arr[] = (object)[
                    'video_id' => $res->id->videoId,
                    'video_title' => $res->snippet->title,
                    'video_description' => $res->snippet->description,
                    'video_image' => $res->snippet->thumbnails->high->url,
                    'video_date' => $res->snippet->publishedAt,
                    'video_channel' => $res->snippet->channelTitle
                ];
            }

            return view('result', ['results' => $arr]); 

        }else {   
            $resultsDB = QuerySearch::select()->where('query', $array['title'])->get();
            return view('result', ['results' => $resultsDB]);
         }
    }


    

    public function show($id) // show controller
    { 

        $array = [
            'title' => "",
            'id' => $id
        ];

        $resultDB = QuerySearch::where([ //check for writing to the db
            "video_id" => $id
        ])->exists();

        if($resultDB == null) // if null
        {
            $results = SearchModel::RequestUrl($array)->items; //Search in api

            $arr[] = (object)[                                 //get object Array
                'video_id' => $results[0]->id,
                'video_title' => $results[0]->snippet->title,
                'video_description' => $results[0]->snippet->description,
                'video_image' => $results[0]->snippet->thumbnails->high->url
            ];
            return view('view', ['results' => $arr]); 

        } else {
            $resultsDB = QuerySearch::where('video_id', $id)->get();

            foreach($resultsDB as $result){
                return view('view', ['results' => $result]);
            }

            
        }  
    }

    public function favoriteadd() // Add to favorite
    {
         Favorite::insert([
            'user_id' => $_POST['user_id'],
            'video_id' => $_POST['video_id'],
            'video_title' => $_POST['video_title'],
            'video_image' => $_POST['video_image']
         ]);
    }
}
