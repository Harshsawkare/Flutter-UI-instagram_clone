import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:video_player/video_player.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //reel
          Positioned.fill(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.network("https://media0.giphy.com/media/12qHWnTUBzLWXS/giphy.webp?cid=ecf05e47sz2fcbb2odbnhgj8ydh9gy9s4f3283ff2tz9uhds&rid=giphy.webp&ct=g", fit: BoxFit.fitHeight,),
              )
          ),

          //dp, caption
          Align(
            alignment: Alignment(-1,0.9),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network("https://images.unsplash.com/photo-1631455779504-91009e15e6b6?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzMXx0b3dKWkZza3BHZ3x8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                      ),
                    ),

                    title:Container(
                      height: 55,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-1,-0.5),
                            child: Text("_kylie.eilyk_",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'text',
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                          Container(
                            alignment: Alignment(-1,0.5),
                            child: Text("Going with the flow",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'text'
                              ),),
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),

          //like
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment(1,0.22),
              child: Icon(Icons.favorite_border, color: Colors.white, size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment(1,0.3),
              child: Text("likes", style: TextStyle(color: Colors.white, fontSize: 13.5, fontFamily: 'text'),)
            ),
          ),

          //comment
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment(1,0.5),
              child: Icon(Icons.comment, color: Colors.white, size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Align(
                alignment: Alignment(1,0.57),
                child: Text("comments", style: TextStyle(color: Colors.white, fontSize: 13.5, fontFamily: 'text'),)
            ),
          ),

          //share
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment(1,0.8),
              child: Icon(Icons.send, color: Colors.white, size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Align(
                alignment: Alignment(1,0.86),
                child: Text("shares", style: TextStyle(color: Colors.white, fontSize: 13.5, fontFamily: 'text'),)
            ),
          ),
        ],
      )
    );
  }
}
