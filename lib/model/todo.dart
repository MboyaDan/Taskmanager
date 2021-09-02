import 'package:flutter/cupertino.dart';

class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  String title;
  String description;

  Todo(
    this.title,
    this.description,
  );
}
