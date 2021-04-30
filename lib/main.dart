import 'package:flutter/material.dart';
import 'package:team_undefined/pages/home.dart';
import 'package:team_undefined/pages/feed.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/feed',
    routes: {
      // '/': (context) => Loading(),
      '.home': (context) => Home(),
      // '/login': (context) => Login(),
      '/feed': (context) => Explore(),
      // '/loading': (context) => Loading(),
    },
  ));
}