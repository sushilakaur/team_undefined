import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_undefined/pages/profile_page.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child:
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1578923813875-bf8b98f36b0f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzB8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                    ),
                  ),
                  Text(
                    'NAME',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'name@gmail.com',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
                Icons.person,
              color: Colors.lightBlue,
            ),
            title: Text(
                'Your Profile',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.post_add_sharp,color: Colors.lightBlue,),
            title: Text(
              'Guidelines',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.info_outline,color: Colors.lightBlue,),
            title: Text(
              'Info And Stats',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.favorite,color: Colors.lightBlue,),
            title: Text(
              'About',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.lightBlue,),
            title: Text(
              'Setting',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.help,color: Colors.lightBlue,),
            title: Text(
              'Help Center',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
