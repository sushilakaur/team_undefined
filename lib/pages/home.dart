import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(40.0),
            child:Text(
              'missing',
              style:TextStyle(
                fontSize: 4.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}