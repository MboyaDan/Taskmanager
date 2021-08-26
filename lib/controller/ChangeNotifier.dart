import 'package:flutter/material.dart';
import 'package:taskmanager/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todo = [
    Todo(createdTime: DateTime.now(), title: "go to bed"),
    Todo(createdTime: DateTime.now(), title: "go to bed"),
    Todo(createdTime: DateTime.now(), title: "go to bed"),
  ];
  List<Todo> get todos => _todo.where((todo) => todo.isDone == false).toList();
}
