import 'package:flutter/material.dart';
import 'package:team_undefined/pages/app_drawer.dart';

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
          IconButton(icon: Icon(Icons.arrow_back),
              iconSize: 30,
              onPressed: () => debugPrint("item"))
        ],
      ),
      drawer: AppDrawer(),
      backgroundColor: Colors.grey[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(30.0,15.0,30.0,10.0),
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
      floatingActionButton: ActionButton(),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Widget bottomNavBar() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 1,
                )
              ],
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              buildNavBarItem(Icons.search_sharp, 0),
              buildNavBarItem(null, -1),
              buildNavBarItem(Icons.account_circle_sharp, 1),
            ],
          ),
        ),
      ],
    );
  }




  Widget ActionButton () {
    return Container(
      height: 120,
      child:
      Stack(
        children: [
          Center(
            child: Container(
              height: 70,
              width: 70,
              // child: CircleAvatar(
              //   radius: 70,
              //   backgroundColor: Colors.grey[200],
              // )
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: Colors.grey[100],
              ),
            ),
          ),
          Center(
            child: Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(100),
              //   color: Colors.grey[200],
              // ),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                ),
                backgroundColor: Colors.lightBlue,
                elevation: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }





  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
        index == 0 ? Navigator.pushNamed(context, '/feed') : index == 1 ? Navigator.pushNamed(context, '/home') : Navigator.pushNamed(context, '/home');
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 45,
        child: icon != null
            ? Icon(
          icon,
          size: 30,
          color: index == _selectedItemIndex
              ? Colors.white70
              : Colors.white,
        )
            : Container(),
      ),
    );
  }

}