import 'package:flutter/material.dart';
import 'package:instagram_clone/inside_login/bottomNavigation.dart';

import 'createnewaccount.dart';
import 'inside_login/home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              //language
              Align(
                alignment: Alignment(0,-0.95),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("English",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'text',
                          fontSize: 15
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
                  ],
                ),
              ),

              //instagram title
              Align(
                alignment: Alignment(0,-0.7),
                child: Image.asset("images/instagram_title_black.png",
                  width: 200,
                  height: 100,),
              ),

              //username
              Align(
                alignment: Alignment(0,-0.35),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    cursorColor: Colors.black54,
                    style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'text',
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300, width: 1)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300, width: 1)
                      ),
                      hintText: 'Phone number, email or username',
                    ),
                  ),
                ),
              ),

              //password
              Align(
                alignment: Alignment(0,-0.1),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: Colors.black54,
                    style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'text',
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300, width: 1)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300, width: 1)
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),

              //login button
              Align(
                alignment: Alignment(0,0.12),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: FlatButton(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Text("Log In",
                      style: TextStyle(
                          fontFamily: 'text',
                          fontSize: 15
                      ),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => BottomNav()
                      ));},
                  ),
                ),
              ),

              //forgot?
              Align(
                alignment: Alignment(0,0.285),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Stack(
                    children: [

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        alignment: Alignment(-0.4,0.2),
                        child: Text("Forgot your login details?",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'text',
                              fontSize: 11
                          ),),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        alignment: Alignment(0.45,0.2),
                        child: Text(" Get help logging in.",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontFamily: 'text',
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ],
                  ),
                ),
              ),

              //or
              Align(
                alignment: Alignment(0,0.35),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.grey,
                        width: 140,
                        height: 1,
                      ),

                      Text("OR",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'text',
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),

                      Container(
                        color: Colors.grey,
                        width: 140,
                        height: 1,
                      ),

                    ],
                  ),
                ),
              ),

              //login with facebook
              Align(
                alignment: Alignment(0,0.5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/icon_facebook.png"),
                      Text(" Log in with Facebook",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontFamily: 'text',
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ),

              //bottom
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.grey,
                        width: MediaQuery.of(context).size.width,
                        height: 0.5,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        alignment: Alignment(-0.2,0.2),
                        child: Text("Don't have an account?",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'text',
                              fontSize: 10
                          ),),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        alignment: Alignment(0.3,0.2),
                        child: InkWell(
                          child: Text(" Sign up.",
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontFamily: 'text',
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                            ),),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => CreateNewAccount()
                            ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

