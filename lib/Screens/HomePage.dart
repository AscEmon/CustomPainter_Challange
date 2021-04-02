import 'package:flutter/material.dart';
import 'package:customPainterChallange/Screens/SunScreen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("Custom Painter Challange",
            style: TextStyle(fontSize: 16, color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
             // Color(0xffFFCE00),
              Color(0xffE86F1C),
             Colors.black
            ],
          ),
        ),
        child: SunScreen(),
      ),
    ));
  }
}
