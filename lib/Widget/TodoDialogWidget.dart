import 'package:flutter/material.dart';
import 'package:taskmanager/Widget/todoform_widget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  const AddTodoDialogWidget({key}) : super(key: key);

  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _fomKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add Todo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 8.0),
          TodoFormWidget(
            //gets the title from  TodoForm Widget and stores in the title
            onChangedTitle: (title) => setState(() => this.title = title),
            //gets the Description from  TodoForm Widget and stores in the description
            onChangedDescription: (description) =>
                setState(() => this.description = description),
            onSavedTodo: () {},
          ),
        ],
      ),
    );
  }
}
