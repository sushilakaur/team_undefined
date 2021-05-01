import 'package:flutter/material.dart';

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
          IconButton(icon: Icon(Icons.drag_handle_rounded),
              iconSize: 50,
              onPressed: () => debugPrint("item"))
        ],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
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
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Yoshna Marwaha',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'EMAIL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'yoshna@gmail.com',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'yoshna@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
