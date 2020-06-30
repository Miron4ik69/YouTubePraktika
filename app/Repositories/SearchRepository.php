<?php 

namespace App\Repositories;

use Google_Client;
use Google_Service;
use Google_Service_YouTube;
use App\QuerySearch;
use App\Repositories\Interfaces\SearchRepositoryInterface;

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
                'order' => 'searchSortUnspecified',
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
           
            return $response;
        } else {
            $searchDB = QuerySearch::select()->where('query', $query)->get();

            return $searchDB;
        }
    }
}
