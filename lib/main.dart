// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/login_create.dart';

import 'login.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>  login_create()
    ));
  }

  final Shader _linearGradient = LinearGradient(
    colors: [Colors.blueAccent, Colors.purple, Colors.deepOrange, Colors.purple, Colors.yellow],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0,-0.05),
              child: Image.asset("images/instagram_title_black.png",
              width: 200,
              height: 100,),
            ),
            Align(
              alignment: Alignment(0,0.45),
              child: Text("FROM",
                style: TextStyle(
                  fontFamily: 'text',
                  fontSize: 15,
                  color: Colors.grey
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,0.5),
              child: Text("F A C E B O O K",
              style: TextStyle(
                fontFamily: 'text',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader=_linearGradient
              ),),
            )
          ],
        ),
      )
    );
  }
}
