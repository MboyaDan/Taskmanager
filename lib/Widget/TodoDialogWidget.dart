import 'package:flutter/material.dart';
import 'package:taskmanager/Widget/todoform_widget.dart';
import 'package:provider/provider.dart';
import 'package:taskmanager/controller/ChangeNotifier.dart';
import 'package:taskmanager/model/todo.dart';

class AddTodoDialogWidget extends StatefulWidget {
  const AddTodoDialogWidget({key}) : super(key: key);

  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _title;
  String _description;
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
          Form(
            key: _formKey,
            child: TodoFormWidget(
              //gets the title from  TodoForm Widget and stores in the title
              onChangedTitle: (String value) {
                _title = value;
              },
              //gets the Description from  TodoForm Widget and stores in the description
              onChangedDescription: (String value) {
                _description = value;
              },

              onSavedTodo: () {
                if (!_formKey.currentState.validate()) return;

                _formKey.currentState.save();
                context
                    .read<TodosProvider>()
                    .addUser(Todo(_description, _title));
                //addUser(User(_name, _city));
              },
            ),
          ),
        ],
      ),
    );
  }
}
