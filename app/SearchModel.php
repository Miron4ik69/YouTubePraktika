<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SearchModel extends Model
{

    public static function RequestUrl($items)
    {         
       $array = [
           'title' => $items['title'],
           'id' => $items['id']
       ];
        
        function decodejson($query)
        {   
            $json = file_get_contents($query);
        
            $results = json_decode($json);

            return $results;
        }

        if($array['title'] == "")
        {
            $getPost = SearchModel::getPost($items['id']);
            return decodejson($getPost);
        } else {
             $getSearch = SearchModel::getSearch($array['title']);
             return decodejson($getSearch);
            } 
    } 
    
    public static function getSearch($title)
    {

        $getString = str_replace(" ", "+", $title); 
        $api = config('google.google_key'); 

        $url = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=" . $getString . "&maxResults=10&order=rating&type=video&key=" . $api;

        return $url;
    }

    public static function getPost($id)
    {
        $api = config('google.google_key');
        $url = "https://www.googleapis.com/youtube/v3/videos?part=snippet&id=" . $id . "&key=". $api;

        return $url; 
    }
}
