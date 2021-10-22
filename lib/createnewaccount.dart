import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/inside_login/bottomNavigation.dart';

import 'login.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  _CreateNewAccountState createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  bool isEmail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70, bottom: 30),
                    child: Container(
                        child: Image.asset("images/profile_icon.png",
                          width: 150,
                          height: 150,
                        )
                    ),
                  ),

                  //phone email fragment
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isEmail = false;
                                });
                              },
                              child: Column(
                                children: [
                                  Text("PHONE",
                                  style: TextStyle(
                                    color: isEmail? Colors.grey : Colors.black,
                                    fontFamily: 'text'
                                  ),),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    color: isEmail? Colors.grey : Colors.black,
                                    width: 160,
                                    height: 1,
                                  )
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isEmail = true;
                                });
                              },
                              child: Column(
                                children: [
                                  Text("EMAIL",
                                    style: TextStyle(
                                        color: isEmail? Colors.black : Colors.grey,
                                        fontFamily: 'text'
                                    ),),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    color: isEmail? Colors.black : Colors.grey,
                                    width: 160,
                                    height: 1,
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                        if (!isEmail)
                          Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
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
                                  hintText: 'Phone',
                                ),
                              ),
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              child: Center(
                                child: Text("You may receive SMS updates from Instagram and can opt out at any time.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'text',
                                  fontSize: 11
                                ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: FlatButton(
                                minWidth: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Text("Next",
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
                                  ));
                                },
                              ),
                            ),
                          ],
                        ),

                        if (isEmail)
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
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
                                    hintText: 'Email',
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: FlatButton(
                                  minWidth: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: Text("Next",
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
                                    ));
                                  },
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
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
                      child: Text("Already have an account?",
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
                        child: Text(" Log in.",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontFamily: 'text',
                              fontSize: 10,
                            fontWeight: FontWeight.bold
                          ),),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Login()
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
    );
  }
}
