import 'package:flutter/material.dart';

class PersonalChat extends StatefulWidget {
  final String myDP;
  final String friendsDP;
  final String friendsUsername;
  final String msg;

  const PersonalChat({Key? key, required this.myDP, required this.friendsDP, required this.friendsUsername, required this.msg}) : super(key: key);

  @override
  _PersonalChatState createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Row(
          children: [

            //friends dp
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(17.5)
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(17.5),
                  child: Image.network(widget.friendsDP, fit: BoxFit.cover)
              ),
            ),

            //friends username
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.friendsUsername,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.5,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),

        //back
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, size: 30, color: Colors.black,),
          onTap: ()
          {
            Navigator.pop(context);
          },
        ),

        actions: [
          //call
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.phone, size: 25, color: Colors.black,),
          ),

          //vc
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/vc.png", width: 25, height: 25,),
          )
        ],
      ),

      backgroundColor: Colors.white,

      body: Column(
        children: [
          Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        child: Container()
                    ),

                    //my msg
                    Row(
                      children: [
                        Expanded(
                            child: Container()
                        ),

                        //msg
                        Wrap(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text("Heyooo",
                                  style: TextStyle(
                                      color: Colors.black
                                  ),),
                              ),
                            )
                          ],
                        ),

                        //my dp
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 10, bottom: 5),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(widget.myDP, fit: BoxFit.cover)
                            ),
                          ),
                        )
                      ],
                    ),

                    //friends msg
                    Row(
                      children: [

                        //friends dp
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5, bottom: 5),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(widget.friendsDP, fit: BoxFit.cover)
                            ),
                          ),
                        ),

                        //msg
                        Wrap(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(widget.msg,
                                style: TextStyle(
                                  color: Colors.black
                                ),),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
          ),

          //type box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(22.5))
              ),
              child: Row(
                children: [

                  //camera
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(17.5)
                      ),
                      child: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 22,),
                    ),
                  ),

                  //text
                  Expanded(
                    child: Row(
                      children: [
                        Text("Type something here",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ),

                  //mic
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Icon(Icons.mic_none_rounded, color: Colors.black, size: 25,),
                  ),
                  
                  //images
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Icon(Icons.image_outlined, color: Colors.black, size: 25,),
                  ),

                  //nudge
                  Padding(
                    padding: const EdgeInsets.only(left: 3, right: 6),
                    child: Icon(Icons.favorite_border_rounded, color: Colors.black, size: 25,),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
