import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/favoris/favoris.dart';
import 'package:flutter_application_seance1/home.dart';
import 'package:flutter_application_seance1/store/list.dart';

class CustomTabBar extends StatefulWidget {
   static const String routeName = "/tabbar";
  const CustomTabBar({super.key});
 

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text("Tab Bar"),
      bottom: TabBar(tabs: [
        //1
        Tab(
          icon: Icon(Icons.home),
          text: "Store",
        ),
        //2
        Tab(
          icon: Icon(Icons.bookmark) ,
          text: "Favoris",
        )
        ,
      ]),
      ),
      body: TabBarView(children: [ListWidget(),FavorisScreen()]),
      
      ),
    );
  }
}