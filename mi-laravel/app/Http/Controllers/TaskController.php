<?php

namespace App\Http\Controllers;

use App\Models\Task;

use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function index()
    {
        return json_encode(Task::all());
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
        $task->update($request->all('title', 'description'));
        return $task;
    }

    public static function delete($id)
    {
        $task = Task::findOrFail($id);
        $task->delete();
        return $task;
    }
}
