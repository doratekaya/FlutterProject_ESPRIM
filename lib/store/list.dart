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
  List<Game> games = [Game("dmc5.jpg", "Devil may Cry", 100),
  Game("fifa.jpg", "FIFA ", 250),
  Game("nfs.jpg", "Need for speed", 180),
  Game("rdr2.jpg", "Red Dead Redemption", 80),
  Game("re8.jpg", "Resident Evil", 650),
  Game("minecraft.jpg", "MineCrafft", 300),
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