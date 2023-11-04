import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/screens/home/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      title: 'Task Manager App',
      home: HomePage(), // Reference the HomePage widget here
    );
  }
}

