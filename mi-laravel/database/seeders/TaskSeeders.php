<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TaskSeeders extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Task::factory(10)->create();
    }
}