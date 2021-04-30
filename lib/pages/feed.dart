import 'package:flutter/material.dart';


class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
              child: Text(
                'Explore Feed',
                style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey,
              ),

            ),
          ],
        ),
      ),
    );
  }
}