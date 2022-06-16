<?php

namespace Database\Seeders;

use App\Models\Posts;
use Carbon\Factory;
use Faker\Factory as FakerFactory;
use Illuminate\Database\Seeder;

class PostsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        facto(App\Modles\Posts::class , 100)->create();
    }
}
