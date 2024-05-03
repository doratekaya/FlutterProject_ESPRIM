import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/models/game.dart';
import 'package:flutter_application_seance1/models/game_argument.dart';

class DetailsScreen extends StatefulWidget {
  static final String routeName = "/details";
  
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
 
  @override
  Widget build(BuildContext context) {

 final GameArgument args =
        ModalRoute.of(context)?.settings.arguments as GameArgument;
            return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Image.asset("images/${args.game.image}"),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(
            color: Colors.blue,
            fontSize: 12.0,
            fontWeight: FontWeight.bold
          ),),
          Padding(padding: EdgeInsets.only(bottom: 20)),
      
          Text("200 TND",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 36),),
           Padding(padding: EdgeInsets.only(bottom: 20)),
          SizedBox(
            width: 200,
            
            child: ElevatedButton(onPressed: (){}, child: Row(
              children: [
                Icon(CupertinoIcons.shopping_cart),
                Text("Ajouter au panier"),
              ],
            )),
          )
        ]),
      ),
    );
  }
}