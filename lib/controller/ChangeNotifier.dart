import 'package:flutter/material.dart';
import 'package:taskmanager/model/todo.dart';
import 'package:provider/provider.dart';
import 'dart:collection';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todo = [];
  UnmodifiableListView<Todo> get todoList => UnmodifiableListView(_todo);
  addUser(Todo todo) {
    _todo.add(todo);
    notifyListeners();
  }

  deleteUser(index) {
    _todo.removeWhere((_todo) => _todo.title == todoList[index].title);
    notifyListeners();
  }
}
