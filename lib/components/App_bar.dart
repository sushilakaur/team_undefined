import 'package:flutter/material.dart';
import 'package:team_undefined/pages/app_drawer.dart';

class AppBarTop extends StatefulWidget {
  @override
  _AppBarTopState createState() => _AppBarTopState();
}

class _AppBarTopState extends State<AppBarTop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGO'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.arrow_back),
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context);
              }
          ),
        ],
      ),
        drawer: AppDrawer(),
    );
  }
}

