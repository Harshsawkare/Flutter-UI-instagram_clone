import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.close_rounded, color: Colors.black, size: 30,),
          ),

          onTap: (){Navigator.pop(context);},
        ),

        title: Text("Edit Profile",
        style: TextStyle(
          color: Colors.black,
          fontSize: 23.5,
          fontWeight: FontWeight.bold
        ),),

        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.check, color: Colors.lightBlue, size: 30,),
            ),
            onTap: (){Navigator.pop(context);},
          ),
        ],
      ),

      body: Column(
        children: [
          //dp
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
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
          ),
          Center(
            child: Text("Change Profile Photo",
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 18
            ),),
          ),

          //name
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10,right: 10),
                child: Text("Name",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14
                ),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10,right: 10),
                child: Text("Alexis Applegate",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Container(
              color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width,
              height: 0.5,
            ),
          ),

          //username
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10,right: 10),
                child: Text("Username",
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14
                  ),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10,right: 10),
                child: Text("Alexis.apk",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Container(
              color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width,
              height: 0.5,
            ),
          ),

          //website
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10,right: 10),
                child: Text("Website",
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14
                  ),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10,right: 10),
                child: Text("https://www.AlexisApp.us.com",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Container(
              color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width,
              height: 0.5,
            ),
          ),

          //bio
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10,right: 10),
                child: Text("Bio",
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14
                  ),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10,right: 10),
                child: Text("Joe Goldberg-ing",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Container(
              color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width,
              height: 0.5,
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 15),
            child: Container(
              color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width,
              height: 0.5,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width,
              height: 0.5,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Personal Information Setting",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 17
                  ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              color: Colors.grey.shade300,
              width: MediaQuery.of(context).size.width,
              height: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

