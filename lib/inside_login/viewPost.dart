import 'package:flutter/material.dart';

class ViewPost extends StatefulWidget {
  final String image;
  const ViewPost({Key? key, required this.image}) : super(key: key);

  @override
  _ViewPostState createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {

  bool unliked = true;
  bool unsaved = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Image.asset("images/instagram_title_black.png",
          width: 130,
          height: 60,
        ),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                            child: Image.network(widget.image, fit: BoxFit.cover)
                        ),
                      ),
                    ),

                    //username
                    Expanded(
                      child: Text("usernames",
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
                  child: Image.network(widget.image, fit: BoxFit.fitWidth,)
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
                      child: Text("usernames",
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
        ),
      ),
    );
  }
}
