<?php

namespace App\Http\Controllers;

use App\Repositories\Interfaces\SearchRepositoryInterface;
use App\Repositories\Interfaces\ViewRepositoryInterface;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    private $SearchRepository;
    private $ViewRepository;

    public function __construct(SearchRepositoryInterface $SearchRepository, ViewRepositoryInterface $ViewRepository)
    {
        $this->SearchRepository = $SearchRepository;
        $this->ViewRepository = $ViewRepository;
    }

    public function search(Request $request)
    {        

        $inputTitle = $request->input('title');

        $search = $this->SearchRepository->search($inputTitle);

        return view('result', ['results' => $search]);
    }

        
    public function show($id)
    { 
        $search = $this->ViewRepository->view($id);
    
        foreach($search as $result){
            return view('view', ['results' => $result]);
        }
    }

}
