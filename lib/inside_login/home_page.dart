import 'package:flutter/material.dart';
import 'package:instagram_clone/inside_login/inbox.dart';
import 'package:instagram_clone/widgets/CustomPageRoute.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool unliked = true;
  bool unsaved = true;

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
  final List posts = [
    "https://images.unsplash.com/photo-1565800489013-c64859d0c2d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c3dpbW1pbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633114128174-2f8aa49759b0?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634053605092-f34639dc76db?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3Mnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633655331376-7483d6ad0255?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1625741867906-181920b4a00d?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8eGpQUjRobGtCR0F8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ];
  final List captions = [
    'Food for my soul',
    'windows 10..windows 11..!! Coffee is constant',
    'Take care of your workspace',
    'When in Rome',
    'Watching through shadows',
    'ART'
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Image.asset("images/instagram_title_black.png",
            width: 130,
            height: 60,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 2),
              child: GestureDetector(
                child: Image.asset("images/send.png",
                width: 25,
                height: 25,),
                onTap: (){
                  Navigator.of(context).push(
                    CustomPageRoute(child: Inbox()),
                  );
                },
              ),
            )
          ],
        ),

        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //stories
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 95,
                  child: Row(
                    children: [
                      //single story circle
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 4,left: 8, right: 8),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.grey, width: 1)
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network("https://images.unsplash.com/photo-1582233479366-6d38bc390a08?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Text("Your Story",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'text',
                            fontSize: 11
                          ),)
                        ],
                      ),

                      //single story circle
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 4,left: 8, right: 8),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey, width: 1)
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network("https://images.unsplash.com/photo-1601288496920-b6154fe3626a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Text("Lydia",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'text',
                                fontSize: 11
                            ),)
                        ],
                      ),

                      //single story circle
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 4,left: 8, right: 8),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey, width: 1)
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network("https://images.unsplash.com/photo-1575739967915-f06fdc268a5b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Text("katherine.ing",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'text',
                                fontSize: 11
                            ),)
                        ],
                      ),

                      //single story circle
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 4,left: 8, right: 8),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey, width: 1)
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Text("callme.macall",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'text',
                                fontSize: 11
                            ),)
                        ],
                      ),

                      //single story circle
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 4,left: 8, right: 8),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey, width: 1)
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network("https://images.unsplash.com/photo-1573600073955-f15b3b6caab7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhY2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Text("suzz",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'text',
                                fontSize: 11
                            ),)
                        ],
                      ),

                      //single story circle
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 4,left: 8, right: 8),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey, width: 1)
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network("https://images.unsplash.com/photo-1610069302033-6fee1f5791d2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGZhY2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Text("scorpi0s",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'text',
                                fontSize: 11
                            ),)
                        ],
                      ),

                      //single story circle
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 4,left: 8, right: 8),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey, width: 1)
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network("https://images.unsplash.com/photo-1611948357031-ef7bce1e44f0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fGZhY2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Text("Kris.tofer",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'text',
                                fontSize: 11
                            ),)
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.5,
                color: Colors.grey,
              ),

              //posts
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: usernames.length,
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
                                        child: Image.network(dps.elementAt(index), fit: BoxFit.cover)
                                    ),
                                  ),
                                ),

                                //username
                                Expanded(
                                  child: Text(usernames.elementAt(index),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'text',
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),

                                //options menu
                                GestureDetector(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image.asset("images/menu.png",
                                      width: 20,
                                      height: 20,),
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

                                              //report
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(10),
                                                    child: Text("Report",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18
                                                      ),),
                                                  )
                                                ],
                                              ),

                                              //Hide
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(10),
                                                    child: Text("Hide",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18
                                                      ),),
                                                  )
                                                ],
                                              ),

                                              //Copy Link
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(10),
                                                    child: Text("Copy Link",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18
                                                      ),),
                                                  )
                                                ],
                                              ),

                                              //Share to
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(10),
                                                    child: Text("Share to...",
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
                                )
                              ],
                            ),

                            //post image
                            Container(
                              color: Colors.grey.shade200,
                              child: Image.network(posts.elementAt(index))
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
                                  child: Text(usernames.elementAt(index),
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
                                  child: Text(captions.elementAt(index),
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
            ],
          ),
        ),

      ),

        //swipe to inbox
        onHorizontalDragUpdate: (details) {
          int sensitivity = 8;
          // if (details.delta.dx > sensitivity) {
          //   // Right Swipe
          // }
          if(details.delta.dx < -sensitivity){
            //Left Swipe
            Navigator.of(context).push(
              CustomPageRoute(child: Inbox()),
            );
          }
        }
    );
  }
}
