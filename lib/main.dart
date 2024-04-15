import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/list.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      home:  ListWidget(),
    );
  }
}