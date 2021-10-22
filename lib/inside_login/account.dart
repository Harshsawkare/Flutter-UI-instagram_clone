
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/inside_login/editProfile.dart';
import 'package:instagram_clone/inside_login/myPosts.dart';
import 'package:instagram_clone/widgets/CustomPageRoute.dart';
import 'package:shimmer/shimmer.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isPosts = true;

  final List feed = [
    "https://images.unsplash.com/photo-1633944284098-4ee1162d321f?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634055074143-46d45de75b43?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634045887809-bb22e6431872?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMzB8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633933368862-13cbab97ded9?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634048179591-b87fd5588b6f?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjF8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //top bar
          Container(
            height: 55,
            child: Center(
              child: Row(
                children: [
                  //username
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Alexis.apk",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Expanded(child: Container()),

                  //add new
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add_box_outlined, color: Colors.black, size: 30,),
                  ),

                  //menu
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.dehaze_outlined, color: Colors.black, size: 30,),
                    ),

                    onTap: (){
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) => Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25))
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 80,
                                      height: 3,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                ),

                                //settings
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14, left: 15, right: 12),
                                      child: Icon(Icons.settings, color: Colors.black, size: 27,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Settings",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                      ),),
                                    )
                                  ],
                                ),

                                //archive
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14, left: 15, right: 12),
                                      child: Icon(Icons.archive_outlined, color: Colors.black, size: 27,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Archive",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18
                                        ),),
                                    )
                                  ],
                                ),

                                //your activity
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14, left: 15, right: 12),
                                      child: Icon(Icons.local_activity_outlined, color: Colors.black, size: 27,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Your Activity",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18
                                        ),),
                                    )
                                  ],
                                ),

                                //qr code
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14, left: 15, right: 12),
                                      child: Icon(Icons.qr_code_scanner_outlined, color: Colors.black, size: 27,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("OR Code",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18
                                        ),),
                                    )
                                  ],
                                ),

                                //saved
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14, left: 15, right: 12),
                                      child: Image.asset("images/unsaved.png", width: 23, height: 23,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Saved",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18
                                        ),),
                                    )
                                  ],
                                ),

                                //close friends
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14, left: 15, right: 12),
                                      child: Icon(Icons.star, color: Colors.black, size: 27,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Close Friends",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18
                                        ),),
                                    )
                                  ],
                                ),

                                //covis-19 information center
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14, left: 15, right: 12),
                                      child: Icon(Icons.health_and_safety, color: Colors.black, size: 27,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Covid-19 Information Center",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18
                                        ),),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                      );
                    },
                  ),
                ]
              ),
            ),
          ),

          //dp and followers
          Container(
            height: 130,
            child: Row(
              children: [
                //dp
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://images.unsplash.com/photo-1582233479366-6d38bc390a08?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                    ),
                  ),
                ),

                //posts
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 14),
                    child: Column(
                      children: [
                        Text("0",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'text',
                          fontWeight: FontWeight.bold
                        ),),
                        Text("Posts",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'text'
                          ),)
                      ],
                    ),
                  ),
                ),

                //followers
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 8),
                    child: Column(
                      children: [
                        Text("0",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'text',
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Followers",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'text'
                          ),)
                      ],
                    ),
                  ),
                ),

                //followings
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 8),
                    child: Column(
                      children: [
                        Text("0",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'text',
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Followings",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'text'
                          ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //bio / edit / website / highlights
          Column(
            children: [
              //name
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Alexis Applegate",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'text',
                      fontWeight: FontWeight.bold
                  ),),
              ),

              //bio
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Joe Goldgberg-ing",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'text'
                  ),),
              ),

              //website
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("https://www.AlexisApp.us.com",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 13,
                      fontFamily: 'text'
                  ),),
              ),

              //edit button
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300, width: 1)
                  ),
                  child: Center(
                    child: Text("Edit Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'text',
                      fontSize: 13
                    ),),
                  ),
                ),

                onTap: (){
                  Navigator.of(context).push(
                    CustomPageRoute(child: EditProfile()),
                  );
                },
              ),

              //highlight
              Align(
                alignment: Alignment(-1,1),
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                    child: Text("+",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35
                    ),),
                  ),
                ),
              )
            ],
          ),

          //feed or tag
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //feed
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isPosts = true;
                    });
                  },

                  child: Column(
                    children: [
                      Icon(Icons.apps, color: isPosts ? Colors.black : Colors.grey, size: 25,),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: isPosts ? Colors.black : Colors.grey,
                        width: 180,
                        height: 1,

                      )
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    setState(() {
                      isPosts = false;
                    });
                  },

                  child: Column(
                    children: [
                      Icon(Icons.person_pin_sharp, color: isPosts ? Colors.grey : Colors.black, size: 25,),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: isPosts ? Colors.grey : Colors.black,
                        width: 180,
                        height: 1,
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),

          if(isPosts)
            Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: StaggeredGridView.countBuilder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                          ),
                          child: Image.network(feed.elementAt(index), fit: BoxFit.cover),
                        ),

                        onTap: (){
                          Navigator.of(context).push(
                            CustomPageRoute(child: MyPosts()),
                          );
                        },
                      );
                    },
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.count(1, index.isEven ? 1 : 1);
                    }),
              ),
            ),
          )
        ],
      )
    );
  }
}

