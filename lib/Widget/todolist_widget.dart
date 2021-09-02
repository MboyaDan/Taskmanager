import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskmanager/controller/ChangeNotifier.dart';

class TodoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todoList;
    if (todos.isEmpty) {
      return Center(child: Text('No todos', style: TextStyle(fontSize: 20)));
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Card(
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title: ${context.watch<TodosProvider>().todoList[index].title}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Description: ${context.watch<TodosProvider>().todoList[index].description}',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () =>
                      context.read<TodosProvider>().deleteUser(index),
                ),
              ],
            ),
          ),
        ),
        //rebuilding user list and adding user to the list
        itemCount: context.watch<TodosProvider>().todoList.length,
      );
    }
  }
}
