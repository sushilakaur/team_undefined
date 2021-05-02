import 'package:flutter/material.dart';
import 'package:team_undefined/pages/app_drawer.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
        child: Column(
          children: [
            Center(
              child: Text(
                'About The App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel dui in urna venenatis finibus dapibus at purus. In mattis sem at ligula volutpat, a dapibus turpis malesuada. Nullam mattis bibendum enim, vitae commodo purus fermentum quis. Vestibulum consectetur ligula mauris, eu porttitor tortor auctor quis',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
              )
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'About The Developers',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/kritik.jpg'),
                      ),
                    ),
                    SizedBox( width: 100),
                    Container(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/sushi.jpg'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 70,
                          backgroundImage: AssetImage('assets/Yoshna.jpeg')
                      ),
                    ),
                    SizedBox( width: 100),
                    Container(
                      child: CircleAvatar(
                        radius: 70,
                          backgroundImage: AssetImage('assets/aryan.png')
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
