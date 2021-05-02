import 'package:flutter/material.dart';
import 'package:team_undefined/pages/home.dart';
import 'package:team_undefined/pages/feed.dart';
import 'package:team_undefined/pages/profile_page.dart';
import 'package:team_undefined/pages/login.dart';
import 'package:team_undefined/pages/addNewPost.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      // '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/login': (context) => LoginPage(),
      '/feed': (context) => Explore(),
      '/profile': (context) => IdCard(),
      '/addnew': (context) => UploadingImageToFirebaseStorage(),
      // '/loading': (context) => Loading(),
    },
  ));
}