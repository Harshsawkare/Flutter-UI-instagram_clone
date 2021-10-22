import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class MyPosts extends StatefulWidget {
  const MyPosts({Key? key}) : super(key: key);

  @override
  _MyPostsState createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> {
  bool unliked = true;
  bool unsaved = true;

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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("Alexis.apk",
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: feed.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                //height: 400,
                child: Column(
                  children: [
                    Row(
                      children: [
                        //dp
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5,left: 8, right: 8),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey, width: 1)
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network("https://images.unsplash.com/photo-1582233479366-6d38bc390a08?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                            ),
                          ),
                        ),

                        //username
                        Expanded(
                          child: Text("Alexis.apk",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'text',
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                            ),),
                        ),

                        //options menu
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset("images/menu.png",
                            width: 20,
                            height: 20,),
                        )
                      ],
                    ),

                    //post image
                    Container(
                      color: Colors.grey.shade200,
                      child: Image.network(feed.elementAt(index))
                      ,
                    ),

                    //actions
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: GestureDetector(
                              child: Image.asset(unsaved? "images/unlike.png" : "images/like.png",
                                width: 20,
                                height: 20,),
                              onTap: (){
                                unliked = unliked? false : true;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset("images/comment.png",
                              width: 20,
                              height: 20,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset("images/send.png",
                              width: 20,
                              height: 20,),
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              child: Image.asset(unsaved? "images/unsaved.png" : "images/saved.png",
                                width: 20,
                                height: 20,),
                              onTap: (){
                                unsaved = unsaved? false : true;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    //username and caption
                    Row(
                      children: [
                        //username
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text("Alexis.apk",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'text',
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                            ),),
                        ),

                        //caption
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Text("caption",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'text',
                              fontSize: 13,
                            ),),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
