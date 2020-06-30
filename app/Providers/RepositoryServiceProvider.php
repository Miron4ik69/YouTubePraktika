<?php

namespace App\Providers;

use App\Repositories\SearchRepository;
use App\Repositories\Interfaces\SearchRepositoryInterface;
use App\Repositories\ViewRepository;
use App\Repositories\Interfaces\ViewRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(
            SearchRepositoryInterface::class, 
            SearchRepository::class,
            ViewRepositoryInterface::class,
            ViewRepository::class
        );
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
