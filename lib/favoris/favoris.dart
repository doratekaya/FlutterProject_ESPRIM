import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/favoris/GridCell.dart';
import 'package:flutter_application_seance1/models/game.dart';
import 'package:flutter_application_seance1/service.dart';

class FavorisScreen extends StatefulWidget {
   FavorisScreen({super.key});
  static final String routeName = "/Favorite";


//list
final List<Game> favoris = [
  Game("1","dmc5.jpg", "Devil may Cry", 100),
  Game("2","fifa.jpg", "FIFA ", 250),
  Game("3","nfs.jpg", "Need for speed", 180),
  Game("4","re8.jpg", "Resident Evil", 650),
 ];
  @override
  State<FavorisScreen> createState() => _FavorisScreenState();
}

class _FavorisScreenState extends State<FavorisScreen> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
body: FutureBuilder(future: ServiceSQLite().fetchBasketGames(),
builder: (context,snapshot){
if(snapshot.hasData){
  return ListView.builder(itemCount: snapshot.data!.length,
  itemBuilder: (context,index){
    return GridCell(snapshot.data![index]);
  },);
}  else{
  return CircularProgressIndicator();
}
}) ,);  

  }
}