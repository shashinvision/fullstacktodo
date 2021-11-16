<?php

namespace App\Http\Controllers;

use App\Models\Task;

use Illuminate\Http\Request;
use DB;


class TaskController extends Controller
{
    public function index($id = 2)
    {
        // $task = Task::all();
        $task = DB::table('tasks')
            ->join('users', 'users.id', '=', 'tasks.user_id')
            ->select('tasks.*', 'users.name')
            ->where('users.id', $id)
            ->get();
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
