import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/favoris/GridCell.dart';
import 'package:flutter_application_seance1/models/game.dart';

class FavorisScreen extends StatefulWidget {
   FavorisScreen({super.key});
  static final String routeName = "/Favorite";


//list
final List<Game> favoris = [
  Game("dmc5.jpg", "Devil may Cry", 100),
  Game("fifa.jpg", "FIFA ", 250),
  Game("nfs.jpg", "Need for speed", 180),
  Game("re8.jpg", "Resident Evil", 650),
 ];
  @override
  State<FavorisScreen> createState() => _FavorisScreenState();
}

class _FavorisScreenState extends State<FavorisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: widget.favoris.length, itemBuilder: (context,index){
        return GridCell(widget.favoris[index]);
      }),
    );
  }
}