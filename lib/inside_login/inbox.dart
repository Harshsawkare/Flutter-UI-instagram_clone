import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_clone/inside_login/personalChat.dart';
import 'package:instagram_clone/widgets/CustomPageRoute.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  bool isChats = true;

  final List msgs = [
    "Hey, where are yo...10m",
    "I'll text you the...14m",
    "Can you send me t...23m",
    "liked your story....1h",
    "liked your story....2h",
    "Call me ASAP........2h"
  ];

  final List dps = [
    "https://images.unsplash.com/photo-1601288496920-b6154fe3626a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1575739967915-f06fdc268a5b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1573600073955-f15b3b6caab7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhY2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1610069302033-6fee1f5791d2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGZhY2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1611948357031-ef7bce1e44f0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fGZhY2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  final List usernames = [
    'Lydia',
    'katherine.ing',
    'callme.macall',
    'suzz',
    'scorpi0s',
    'Kris.tofer'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("username",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'text',
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, size: 30, color: Colors.black,),
          onTap: ()
          {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/vc.png", width: 25, height: 25,),
          )
        ],
      ),

      backgroundColor: Colors.white,

      body: Column(
        children: [
          //chats/request fragments
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isChats = true;
                    });
                  },
                  child: Column(
                    children: [
                      Text("Chats",
                        style: TextStyle(
                            color: isChats? Colors.black : Colors.grey,
                            fontFamily: 'text'
                        ),),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        color: isChats? Colors.black : Colors.grey,
                        width: 180,
                        height: 1,
                      )
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      isChats = false;
                    });
                  },
                  child: Column(
                    children: [
                      Text("Requests",
                        style: TextStyle(
                            color: isChats? Colors.grey : Colors.black,
                            fontFamily: 'text'
                        ),),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        color: isChats? Colors.grey : Colors.black,
                        width: 180,
                        height: 1,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          if(isChats)
            Expanded(
              child: Column(
                children: [
                  //search bar
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Icons.search_sharp, color: Colors.grey,),
                              ),
                              Text("Search",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontFamily: 'text'
                                ),)
                            ],
                          )
                      ),
                    ),
                  ),

                  //messages
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: dps.length,
                        itemBuilder: (BuildContext context,int index){
                          return GestureDetector(
                            child: ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(25)
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.network(dps.elementAt(index), fit: BoxFit.cover)
                                ),
                              ),

                              trailing: Icon(Icons.photo_camera_outlined, size: 25, color: Colors.black,),

                              title:Container(
                                height: 55,
                                child: Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment(-1,-0.5),
                                      child: Text(usernames.elementAt(index),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'text',
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                    Container(
                                      alignment: Alignment(-1,0.5),
                                      child: Text(msgs.elementAt(index),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'text'
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            onTap: () {
                              Navigator.of(context).push(
                              CustomPageRoute(
                                  child: PersonalChat(
                                    myDP: "https://images.unsplash.com/photo-1582233479366-6d38bc390a08?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                    friendsDP: dps.elementAt(index),
                                    friendsUsername: usernames.elementAt(index),
                                    msg: msgs.elementAt(index),
                                )
                              ),
                            );

                            }
                          );
                        }
                    ),
                  ),
                ],
              ),
            )
          else
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text("No Requests",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: 'text'
                ),),
              ),
            )
        ],
      ),

    );
  }
}
