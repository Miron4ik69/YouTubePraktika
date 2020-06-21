<?php

namespace App\Http\Controllers;

use App\Favorite;
use App\QuerySearch;
use Illuminate\Http\Request;
use Facade\Ignition\QueryRecorder\Query;
use Google_Client;
use Google_Service;
use Google_Service_YouTube;
use Illuminate\Support\Facades\Auth;

class SearchController extends Controller
{

    private $youtube;

    public function __construct()
    {
        $client = new Google_Client();
        $client->setApplicationName(config('google.application_name'));
        $client->setDeveloperKey(config('google.google_key'));
        $this->youtube = new Google_Service_YouTube($client);
    }

    public function search(Request $request)
    {        

        $inputTitle = $request->input('title');

        function insertQuery($items, $inputTitle) // insert Query to db
        {
            foreach($items->items as $item){
                QuerySearch::insert([
                    'query' => $inputTitle,
                    'video_id' => $item->id->videoId,
                    'video_title' => $item->snippet->title,
                    'video_description' => $item->snippet->description,
                    'video_image' => $item->snippet->thumbnails->high->url,
                    'video_date' => $item->snippet->publishedAt,
                    'video_channel' => $item->snippet->channelTitle
                ]);
            }     
        } 

        function getArray($result)
        {
            foreach($result->items as $res){  

                $arr[] = (object)[
                    'video_id' => $res->id->videoId,
                    'video_title' => $res->snippet->title,
                    'video_description' => $res->snippet->description,
                    'video_image' => $res->snippet->thumbnails->high->url,
                    'video_date' => $res->snippet->publishedAt,
                    'video_channel' => $res->snippet->channelTitle
                ];
            }

            return $arr;
        }

        $resultsDB = QuerySearch::where([
            'query' => $inputTitle
        ])->exists(); 

        if($resultsDB == null){

            $queryParams = [
                'order' => 'searchSortUnspecified',
                'q' => $inputTitle
            ];

            $response = $this->youtube->search->listSearch('snippet', $queryParams);

            insertQuery($response, $inputTitle);

            return view('result', ['results' => getArray($response)]);
        } else {
            $resultsDB = QuerySearch::select()->where('query', $inputTitle)->get();
            return view('result', ['results' => $resultsDB]);
        }
    }

        
    public function show(Request $request, $id) // show controller
    { 
        $resultsDB = QuerySearch::where('video_id', $id)->get();
    
        foreach($resultsDB as $result){
            return view('view', ['results' => $result]);
        }
    }

}
