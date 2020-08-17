<?php 

namespace App\Repositories;

use Google_Client;
use Google_Service;
use Google_Service_YouTube;
use App\QuerySearch;
use App\Repositories\Interfaces\SearchRepositoryInterface;
use Facade\Ignition\QueryRecorder\Query;

class SearchRepository implements SearchRepositoryInterface
{
    private $youtube;

    public function __construct()
    {
        $client = new Google_Client();
        $client->setApplicationName(config('google.application_name'));
        $client->setDeveloperKey(config('google.google_key'));
        $this->youtube = new Google_Service_YouTube($client);
    }

    public function search($query)
    {

        $searchDB = QuerySearch::where([
            'query' => $query
        ])->exists();

        if($searchDB == null){   

            $queryParams = [
                'maxResults' => 1000,
                'order' => 'relevance',
                'q' => $query
            ];
    
            $response = $this->youtube->search->listSearch('snippet', $queryParams);

            foreach($response->items as $item){
                QuerySearch::insert([
                    'query' => $query,
                    'video_id' => $item->id->videoId,
                    'video_title' => $item->snippet->title,
                    'video_description' => $item->snippet->description,
                    'video_image' => $item->snippet->thumbnails->high->url,
                    'video_date' => $item->snippet->publishedAt,
                    'video_channel' => $item->snippet->channelTitle
                ]);
            }  

            foreach($response->items as $res){  

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
        } else {
            $searchDB = QuerySearch::select()->where('query', $query)->get();

            return $searchDB;
        }
    }
}
