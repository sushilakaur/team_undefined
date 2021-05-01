import 'package:flutter/material.dart';
import 'package:team_undefined/pages/home.dart';
import 'package:team_undefined/pages/feed.dart';
import 'package:team_undefined/pages/profile_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/profile',
    routes: {
      // '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/profile': (context) => IdCard(),
      '/feed': (context) => Explore(),
      // '/loading': (context) => Loading(),
    },
  ));
}