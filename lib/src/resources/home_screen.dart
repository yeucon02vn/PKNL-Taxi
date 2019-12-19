import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override 
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Center(child: Text("HOME PAGE"))
      )
    );
  }
}