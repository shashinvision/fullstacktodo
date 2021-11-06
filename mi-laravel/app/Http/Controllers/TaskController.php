<?php

namespace App\Http\Controllers;

use App\Models\Task;

use Illuminate\Http\Request;

class TaskController extends Controller
{
    public static function index()
    {
        return json_encode(Task::all());
    }

    public static function show($id)
    {
        $task = Task::findOrFail($id);
        return $task;
    }
    public static function store(Request $request)
    {
        return Task::create($request);
    }

    public static function update(Request $request, $id)
    {
        $task = Task::findOrFail($id);
        $task->update($request->all());
        return $task;
    }

    public static function delete($id)
    {
        $task = Task::findOrFail($id);
        $task->delete();
        return $task;
    }
}
