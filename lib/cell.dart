import 'package:flutter/material.dart';

class GameCell extends StatelessWidget {
  //var
 final String name;
 final String image; 
 final double price; 
 //const
  const GameCell(this.image,this.name,this.price,{super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
        children: 
        [Image.asset("images/$image",width: 170,),
        Padding(
          
          padding: const EdgeInsets.only(left: 12),
          child: Center(
        
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(price.toString(),style: TextStyle(color: Colors.blue,fontSize: 20),)
            ],
              ),
          ),
        )],),
      ),);
  }
}