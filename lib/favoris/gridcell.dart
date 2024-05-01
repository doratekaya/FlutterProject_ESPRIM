import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/models/game.dart';

class GridCell extends StatelessWidget {
  final Game game;
  const GridCell(this.game,{super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset("images/${game.image}"),
      ),
    ));
  }
}