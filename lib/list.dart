import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/cell.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game-ESPRIM STORE"),
      ),
      body:Column(children: [
        GameCell("dmc5.jpg", "Devil may Cry", 100),
        GameCell("fifa.jpg", "FIFA ", 250),
        GameCell("nfs.jpg", "Need for speed", 180),
        GameCell("rdr2.jpg", "Red Dead Redemption", 80),
      ]) ,
    );
  }
}