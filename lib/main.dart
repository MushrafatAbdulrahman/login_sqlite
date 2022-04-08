import 'package:flutter/material.dart';
import 'package:routing_assignment/my_app.dart';

import 'package:routing_assignment/app_database.dart';
import 'package:routing_assignment/db_operations.dart';
import 'package:routing_assignment/loginpage.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


// void main() {
//   runApp(const MyApp());
// }

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // // Open the database and store the reference.
  // final database = openDatabase(
  //   // Set the path to the database. Note: Using the `join` function from the
  //   // `path` package is best practice to ensure the path is correctly
  //   // constructed for each platform.
  //     join(await getDatabasesPath(), 'app_database.db'),
  //
  //   onCreate: (db, version) {
  //     // Run the CREATE TABLE statement on the database.
  //     return db.execute(
  //       'CREATE TABLE users(id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT,)',
  //     );
  //   },
  //   // Set the version. This executes the onCreate function and provides a
  //   // path to perform database upgrades and downgrades.
  //   version: 1,
  // );

  final db = await AppDatabase().initDB();
  // String email = emailController.text;

  // DBOperations(db).insertRecord(emailController.text, "Rahman");
  // DBOperations(db).insertRecord("Mush", "Rahman");


  runApp(const MyApp());
}



