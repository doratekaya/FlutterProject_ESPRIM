import 'package:flutter_application_seance1/models/game.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ServiceSQLite{

  //Insert into sql flite
   Future<void> insertSQFlite(Game game) async {
    //db init
    Database database =
        await openDatabase(join(await getDatabasesPath(), 'G-store.db'),
            onCreate: (db, version) async {
      await db.transaction((txn) async {
        await txn.execute(
            "CREATE TABLE games (id TEXT PRIMARY KEY, title TEXT, image TEXT, price INTEGER)");
      });
    }, version: 2);

    //obj
    Map<String, dynamic> gameObject = {
      "id": game.id,
      "image": game.image,
      "price": game.prix,
      "title": game.name
    };

    database
        .insert('games', gameObject,
            conflictAlgorithm: ConflictAlgorithm.replace)
        .then((value) => database.close());

    //confirm
    List<Map<String, dynamic>> res = await database.query('games');
    print(res);
  }

  //2 Get from DB
   Future<List<Game>> fetchBasketGames() async {
      List<Game> basketGames = [];

    Database database =
        await openDatabase(join(await getDatabasesPath(), 'G-store.db'));
    List<Map<String, dynamic>> result = await database.query("games");
    print(result);
    for (var item in result) {
      basketGames.add(Game(
          item["id"], item["image"], item["title"], item["price"]));

    }

    return basketGames;
  }


  


}