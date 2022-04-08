import 'package:flutter/material.dart';
import 'package:routing_assignment/my_homepage.dart';
import 'package:routing_assignment/loginpage.dart';
import 'package:routing_assignment/registerpage.dart';
import 'package:flutter/src/material/colors.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        // '/': (context) => const MyHomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}
