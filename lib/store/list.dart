import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/store/cell.dart';
import 'package:flutter_application_seance1/models/game.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});
  static final String routeName = "/List";

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<Game> games = [Game("1","dmc5.jpg", "Devil may Cry", 100),
  Game("2","fifa.jpg", "FIFA ", 250),
  Game("3","nfs.jpg", "Need for speed", 180),
  Game("4","rdr2.jpg", "Red Dead Redemption", 80),
  Game("5","re8.jpg", "Resident Evil", 650),
  Game("6","minecraft.jpg", "MineCrafft", 300),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: games.length ,
        itemBuilder: (context,index){
          return GameCell(games[index]);
        }) ,
    );
  }
}