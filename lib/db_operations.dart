import 'package:routing_assignment/app_database.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:routing_assignment/user.dart';
import 'package:routing_assignment/loginpage.dart';



class DBOperations {
  Database _database;


  DBOperations(this._database);

  Future<void> insertRecord(String email, String password) async{
    Map<String, Object> userMap = {
      "id": DateTime.now().millisecond,
      "email": email,
      "password": password,
    };

    await _database.insert(
        'users',
        userMap,
        conflictAlgorithm: ConflictAlgorithm.replace
    );
  }



  Future<List<User>> users() async {
    final List<Map<String, dynamic>> maps = await _database.query('users');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['id'],
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }
}