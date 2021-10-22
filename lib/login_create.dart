import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/createnewaccount.dart';
import 'package:instagram_clone/login.dart';

class login_create extends StatefulWidget {
  const login_create({Key? key}) : super(key: key);

  @override
  _login_createState createState() => _login_createState();
}

class _login_createState extends State<login_create> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
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
              Align(
                alignment: Alignment(0,-0.35),
                child: Image.asset("images/instagram_title_black.png",
                width: 200,
                height: 100,),
              ),
              Align(
                alignment: Alignment(0,0.05),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: FlatButton(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Text("Create New Account",
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
                          builder: (context) => CreateNewAccount()
                      ));
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0,0.25),
                child: InkWell(
                  child: Text("Log In",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontFamily: 'text',
                    fontWeight: FontWeight.bold
                  ),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Login()
                    ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
