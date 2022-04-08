import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}



class _RegisterPageState  extends State<RegisterPage> {
  var textstyle = TextStyle(
    color: Colors.black45,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
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
                        Colors.black.withOpacity(0.3),
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
                      height: MediaQuery.of(context).size.height*0.09,
                      margin: EdgeInsets.fromLTRB(0, 7.5, 0, 0),
                      // color: Colors.orangeAccent,
                      child: ListTile(
                        title: Text(
                          "Register",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 35,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        subtitle: Text(
                          "Create your new account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),

                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.74,
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
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
                            height: MediaQuery.of(context).size.height*0.055,
                            margin: EdgeInsets.fromLTRB(30, 50, 30, 7.5),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'First Name',
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
                            margin: EdgeInsets.fromLTRB(30, 7.5, 30, 7.5),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Last Name',
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
                            margin: EdgeInsets.fromLTRB(30, 7.5, 30, 7.5),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Email',
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
                            margin: EdgeInsets.fromLTRB(30, 7.5, 30, 7.5),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
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
                            margin: EdgeInsets.fromLTRB(30, 7.5, 30, 7.5),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
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
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.58,
                            margin: EdgeInsets.fromLTRB(30, 10, 30, 30),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black45,
                                ),

                                children: <TextSpan>[
                                  TextSpan(text:
                                    "By signing you agree to our ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  TextSpan(text:"Terms of use "),

                                  TextSpan(text:
                                    "and ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  TextSpan(text:"privacy policy."),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            height: MediaQuery.of(context).size.height*0.055,
                            margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orangeAccent),
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            ),
                            child: TextButton(
                              onPressed: (){},
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
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height*0.58,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "Already have an account?",
                                    style: textstyle,
                                  ),
                                ),

                                Container(
                                  child: Text("  "),
                                ),

                                Container(
                                  child: Text(
                                    "Log In",
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
