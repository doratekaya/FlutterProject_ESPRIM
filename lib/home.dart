import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/favoris/favoris.dart';
import 'package:flutter_application_seance1/store/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static final String routeName = "/homebottomNav";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //1
  int index =0;
  //2
  List<Widget> interfaces = [ListWidget(),FavorisScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: interfaces[index],
      bottomNavigationBar: BottomNavigationBar(currentIndex:index,onTap: (value) {
        setState(() {
          index = value;
        });
      },items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favoris")
      ]),
    );
  }
}