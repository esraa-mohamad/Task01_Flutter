import 'package:flutter/material.dart';
import 'package:task_02/modules/age_calculator/calculate/calculate.dart';
import 'package:task_02/modules/ui_screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  SramLogin(),
    );
  }
}
