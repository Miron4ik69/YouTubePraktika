<?php 

namespace App\Repositories;

use App\QuerySearch;
use App\Repositories\Interfaces\ViewRepositoryInterface;

class ViewRepository implements ViewRepositoryInterface 
{
    public function view($query)
    {
        $resultsDB = QuerySearch::where('video_id', $query)->get();

        return $resultsDB;
    }
}