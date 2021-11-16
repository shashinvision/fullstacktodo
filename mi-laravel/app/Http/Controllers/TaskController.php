<?php

namespace App\Http\Controllers;

use DB;
use App\Models\Task;
use Illuminate\Http\Request;


class TaskController extends Controller
{
    public function index($id = 0)
    {
        // $task = Task::all();
        if ($id > 0) {
            $task = DB::table('tasks')
                ->join('users', 'users.id', '=', 'tasks.user_id')
                ->select('tasks.*', 'users.name')
                ->where('users.id', $id)
                ->get();
        } else {
            $task = DB::table('tasks')
                ->join('users', 'users.id', '=', 'tasks.user_id')
                ->select('tasks.*', 'users.name')
                ->get();
        }


        return json_encode($task);
    }

    public  function show($id)
    {

        $task = Task::findOrFail($id);
        return $task;
    }
    public  function store(Request $request)
    {
        return Task::create($request->all());
    }

    public  function update(Request $request, $id)
    {

        $task = Task::findOrFail($id);
        $task->update($request->all(['title', 'description']));
        return $task;
    }

    public static function delete($id)
    {
        $task = Task::findOrFail($id);
        $task->delete();
        return $task;
    }
}
