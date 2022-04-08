import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routing_assignment/app_database.dart';
import 'package:routing_assignment/db_operations.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  void initState() {
    testDB();
    super.initState();
  }

  void testDB() async {
    var database = await AppDatabase().initDB();
    DBOperations(database)
        .users()
        .then((value) => { print ("USERS " + value[0].email + " " + value[0].password)
      // .then((value) => { print ("USERS " + value.length.toString())
    });
  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        title: Text(
            "DecorByMush",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        backgroundColor: Color(0xFFaf7b1b),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // color: Color(0xFFFFBF00),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/dining.jfif"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),
                BlendMode.hardLight
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.6,
              // color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                child:  Text(
                  "Transforming Spaces Virtually",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              )

            ),

            Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.055,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orangeAccent),
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.all(Radius.circular(35.0)),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("/register");
                },
                child: const Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),

                ),

              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.055,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white70),
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(35.0)),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("/login");
                },
                child: const Text(
                  'Log In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.orangeAccent,
                  ),

                ),

              ),
            ),

          ],
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
