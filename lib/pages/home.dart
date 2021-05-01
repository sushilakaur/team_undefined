import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int  _selectedItemIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGO'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.drag_handle_rounded),
              iconSize: 50,
              onPressed: () => debugPrint("item"))
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(30.0,15.0,30.0,30.0),
            padding: EdgeInsets.all(10.0),
            child:Row(
              children: <Widget>[
                Container(
                  //margin: EdgeInsets.only(left: 18),
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
                SizedBox(width: 30.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Text(
                      'Name',
                      style:TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                    SizedBox(height:5.0),
                    Text(
                      'xyz@myapp',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.lightBlue[100],
              ),
              child:Padding(
                padding: const EdgeInsets.fromLTRB(5.0,5.0,40.0,80.0),
                child: Text(
                  'Posts-Missing',
                  style:TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.lightBlue[100],
              ),
              child:Padding(
                padding: const EdgeInsets.fromLTRB(5.0,5.0,40.0,80.0),
                child: Text(
                  'Posts-Found',
                  style:TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 60,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
            ),
            backgroundColor: Colors.grey[900],
            elevation: 15,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
              )
            ],
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            buildNavBarItem(Icons.search_sharp, 0),
            buildNavBarItem(null, -1),
            buildNavBarItem(Icons.account_circle_sharp, 1),
          ],
        ),
      ),
    );
  }
  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 45,
        child: icon != null
            ? Icon(
          icon,
          size: 30,
          color: index == _selectedItemIndex
              ? Colors.black
              : Colors.grey[700],
        )
            : Container(),
      ),
    );
  }

}