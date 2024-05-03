import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/authScreens/login.dart';
import 'package:flutter_application_seance1/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyWidget extends StatelessWidget {
  static final String routeName="/";
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () async{
      SharedPreferences.getInstance().then((value) {
       if(value.containsKey("username")){
        Navigator.pushNamed(context, HomeScreen.routeName);
      }else {
        Navigator.pushNamed(context, LoginScreen.routeName);

      }
      });
    });
    return Scaffold(body: Text("Loading ...."),);
  }
}