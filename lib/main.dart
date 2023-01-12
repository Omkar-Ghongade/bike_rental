import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 80,
                  top: 93,
                  child: Image.asset("assets/icons/icon.png",width: 230,height: 236),
              ),
              Positioned(
                  left: 22,
                  top: 602,
                  child: Image.asset("assets/Images/s1img.png",width: 338,height: 186)),
              Positioned(
                left: 24,
                top: 350,
                child: OutlinedButton(
                    onPressed:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                    },
                    child: Text("Existing User",style: TextStyle(fontSize: 20,fontFamily: 'Roboto-Bold')),
                ),
              ),
              Positioned(
                left: 24,
                top: 420,
                child: OutlinedButton(
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                    );
                  },
                  // backgroundColor: Color(0xFFF50057),
                  child: Text("New User",style: TextStyle(fontSize: 20,fontFamily: 'Roboto-Bold')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
    );
  }
}