import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskmanager/screens/HomeScreen.dart';
import 'package:taskmanager/controller/ChangeNotifier.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = "task Manager";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Color(0xFFf6f5ee),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
