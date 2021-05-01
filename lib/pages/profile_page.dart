import 'package:flutter/material.dart';
import 'package:team_undefined/pages/app_drawer.dart';

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('LOGO'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
              iconSize: 30,
              onPressed: () {
            Navigator.pop(context);
              },
          )
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,20.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 18),
                height: 120,
                width: 120,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(150), color: Colors.black),
               child: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1578923813875-bf8b98f36b0f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzB8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                radius: 150.0,
        ),
        ),
      ),
            Divider(
              height: 40.0,
              color: Colors.grey[300],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Yoshna Marwaha',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'EMAIL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'yoshna@gmail.com',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'PERSONAL INFORMATION',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.0,
                        fontSize: 18.0,
                      ),
                    ),
                    Icon(
                      Icons.more_vert_sharp,
                      size: 25.0,
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: Text(
                        '9835628253',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.0,
                        fontSize: 18.0,
                      ),
                    ),
                    Icon(
                      Icons.more_vert_sharp,
                      size: 25.0,
                    ),
                    SizedBox(width: 70),
                    Container(
                      width: 250,
                      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: Text(
                        '910b road, london 1230459',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Center(
                  child:
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlue,
                    ),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          'Sign Out',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
