import 'package:flutter/material.dart';
import 'screens/exams_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Распоред за испити',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ExamsListScreen(indexNumber: '221072'), // Пример број на индекс
    );
  }
}