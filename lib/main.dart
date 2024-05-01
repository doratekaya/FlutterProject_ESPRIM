import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/authScreens/inscription.dart';
import 'package:flutter_application_seance1/authScreens/login.dart';
import 'package:flutter_application_seance1/favoris/favoris.dart';
import 'package:flutter_application_seance1/home.dart';
import 'package:flutter_application_seance1/store/details.dart';
import 'package:flutter_application_seance1/store/list.dart';
import 'package:flutter_application_seance1/tabbar/customtab_bar.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
     
      routes: {
        LoginScreen.routeName:(context) => LoginScreen(),
        HomeScreen.routeName:(context) => HomeScreen(),
        FavorisScreen.routeName :(context) => FavorisScreen(),
        CustomTabBar.routeName :(context) => CustomTabBar()
      },
    );
  }
}