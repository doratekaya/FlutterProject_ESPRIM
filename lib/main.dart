import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/authScreens/inscription.dart';
import 'package:flutter_application_seance1/store/details.dart';
import 'package:flutter_application_seance1/store/list.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      home:  Inscription(),
      
    );
  }
}