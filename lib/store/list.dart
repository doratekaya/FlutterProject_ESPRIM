import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/store/cell.dart';
import 'package:flutter_application_seance1/models/game.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});
  static final String routeName = "/List";

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData=getAllData();
  }
  //var
  late Future<bool> fetchData;
  List<Game> games = [];
  
 

  //Fun Get
  Future<bool> getAllData()async{
  Map<String,String> headres={
    'X-RapidAPI-Key': '98b7d56a3emsh0f8e03a7281740ap1d9fb9jsne8302f31dc03',
    'X-RapidAPI-Host': 'free-to-play-games-database.p.rapidapi.com'
  };
  Uri urlget = Uri.parse("https://free-to-play-games-database.p.rapidapi.com/api/games");
   await http.get(urlget,headers: headres).then((response){
  
    if(response.statusCode==200){
      //Serialization
      List<dynamic> result = json.decode(response.body);
      for(var item in result){
        
        games.add(Game(item['id'].toString(), item['thumbnail'], item['title'], 200));
        print(games);
        return true;
      }
    }else{
      print("Erreur");
      return false;

    }
   
  });

  return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder(
        future: getAllData(),
        
        builder:(context,snapshot){
          if(snapshot.hasData){
              return ListView.builder(itemCount: games.length,
              itemBuilder: (context,index){
                return GameCell(Game(games[index].id, games[index].image, games[index].name, games[index].prix));
              },);
          }else{
            return CircularProgressIndicator();
          }
        }
      ) ,
    );
  }
}