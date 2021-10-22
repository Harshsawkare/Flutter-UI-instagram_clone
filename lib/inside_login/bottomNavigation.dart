import 'package:flutter/material.dart';
import 'package:instagram_clone/inside_login/account.dart';
import 'package:instagram_clone/inside_login/activity.dart';
import 'package:instagram_clone/inside_login/explore.dart';
import 'package:instagram_clone/inside_login/home_page.dart';
import 'package:instagram_clone/inside_login/reels.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _selectedIndex = 0;

  static const List<Widget> _bottomNavView = <Widget>[
    HomePage(),
    Explore(),
    Reels(),
    Activity(),
    Account()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: _bottomNavView.elementAt(_selectedIndex),
        ),

        bottomNavigationBar: SizedBox(
          height: 48,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: [
              //home
              BottomNavigationBarItem(
                  icon: Container(
                    width: 21,
                    child: Center(
                        child: Icon(Icons.home_filled ,size: 25, color: Colors.black,)
                    ),
                  ),
                  title: Container()
              ),

              //explore
              BottomNavigationBarItem(
                icon: Container(
                  width: 21,
                  child: Center(
                      child: Icon(Icons.search_sharp ,size: 25, color: Colors.black,)
                  ),
                ),
                title: Container(),
              ),

              //reels
              BottomNavigationBarItem(
                  icon: Container(
                    width: 30,
                    child: Center(
                        child: Image.asset("images/reels_off.png", width: 24, height: 24,)
                    ),
                  ),
                  title: Container()
              ),

              //activity
              BottomNavigationBarItem(
                  icon: Container(
                    width: 21,
                    child: Center(
                        child: Icon(Icons.favorite_border ,size: 25, color: Colors.black,)
                    ),
                  ),
                  title: Container()
              ),

              //profile
              BottomNavigationBarItem(
                  icon: Container(
                    width: 25,
                    child: Center(
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1.2)
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network("https://images.unsplash.com/photo-1582233479366-6d38bc390a08?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover)
                        ),
                      ),
                    ),
                  ),
                  title: Container()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
