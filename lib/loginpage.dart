import 'package:flutter/material.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:routing_assignment/db_operations.dart';
import 'package:routing_assignment/app_database.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var textstyle = TextStyle(
    color: Colors.black45,
  );

  //

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  //
  userlogin(context) async {
    final db = await AppDatabase().initDB();

    String email = emailController.text;
    String password = passwordController.text;

    print(email + " " + password);

    await DBOperations(db).insertRecord(email, password);

    Navigator.of(context).pushNamed("/register");


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login Page"),
        backgroundColor: Colors.orangeAccent,
      ),
      body:
      SingleChildScrollView(

        child: Stack(
          children: <Widget> [
            Container(
              width: MediaQuery.of(context).size.width,
              // color: Color(0xFFFFBF00),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/kitchen.jpg"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topLeft,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.02),
                      BlendMode.hardLight
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.08,
                    height: MediaQuery.of(context).size.height*0.04,
                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(55.0)),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 15,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.58,
                    margin: EdgeInsets.fromLTRB(0, 145, 0, 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(75),
                      ),
                    ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.blue,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: ListTile(
                            title: Text(
                              "Welcome Back",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.orangeAccent,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              "Login to your account",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height*0.055,
                          margin: EdgeInsets.fromLTRB(30, 30, 30, 15),
                          child: TextField(
                            controller: emailController,
                            obscureText: false,
                            decoration: InputDecoration(
                              // labelText: 'Email / Username',
                              // labelStyle: TextStyle(
                              //   color: Colors.black38,
                              // ),
                              hintText: 'Enter Username',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(16),
                              fillColor: Colors.black12,
                            ),
                          ),

                        ),


                        Container(
                          height: MediaQuery.of(context).size.height*0.055,
                          margin: EdgeInsets.fromLTRB(30, 15, 30, 15),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: Colors.orangeAccent,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(16),
                              fillColor: Colors.black12,
                            ),
                          ),

                        ),


                        Container(
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height*0.58,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                // color: Colors.blue,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),

                                    Container(
                                      child: Text("  Remember me", style: textstyle,),
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                // child: Text("Forgot Password?", style: textstyle,),
                                child: Text(emailController.text),
                              ),
                            ],
                          ),
                        ),


                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          height: MediaQuery.of(context).size.height*0.055,
                          margin: EdgeInsets.fromLTRB(0, 80, 0, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orangeAccent),
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                          ),
                          child: TextButton(
                            onPressed: (){
                              userlogin(context);
                            },
                            child: const Text(
                              'Log In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white70,
                              ),

                            ),

                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height*0.58,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "Don't have an account?",
                                  style: textstyle,
                                ),
                              ),

                              Container(
                                child: Text("  "),
                              ),

                              Container(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),
            ),
          ]
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
