import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/models/game.dart';
import 'package:flutter_application_seance1/models/game_argument.dart';
import 'package:flutter_application_seance1/store/details.dart';

class GameCell extends StatelessWidget {
  //var
 final Game game;
 //const
  const GameCell(this.game,{super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailsScreen.routeName, arguments: GameArgument(game));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
          children: 
          [Image.network(game.image,width: 150,),
          Padding(
            
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Center(
          
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(game.name),
                  Text(game.prix.toString(),style: TextStyle(color: Colors.blue,fontSize: 20),)
              ],
                ),
            ),
          )],),
        ),),
    );
  }
}