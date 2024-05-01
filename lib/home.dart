import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/favoris/favoris.dart';
import 'package:flutter_application_seance1/store/list.dart';
import 'package:flutter_application_seance1/tabbar/customtab_bar.dart';

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
      drawer: Drawer(
        child: Scaffold(appBar: AppBar(title: Text("HELLO FROM DRAWER"),
        ),
        body:Column(children: [

          //1
          ListTile(title: Row(
            children: [
              Icon(Icons.person),Text("PROFIL")
            ],
          ),),
          //2
          ListTile(onTap: () {
            Navigator.pushNamed(context, CustomTabBar.routeName);
          },title: Row(
            children:[
            Icon(Icons.navigation_outlined),
            Text("Navigate To TabBar")]
          ),)
        ]) ,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:index,
        onTap: (value) {
        setState(() {
          index = value;
        });
      },
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favoris")
      ]),
    );
  }
}