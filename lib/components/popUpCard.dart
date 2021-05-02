import 'package:flutter/material.dart';
import 'package:team_undefined/pages/addNewPost.dart';

class PopUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 322,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Add the Post of the missing person',
                      style: TextStyle(
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/addNew');
                  },
                    color: Colors.lightBlue,
                    child: Text(
                      'Add Post',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Divider(
                    color: Colors.black,
                    thickness: 2.0,
                  ),
                  SizedBox(height: 40,),
                  Center(
                    child: Text(
                      'Add the post of the person you have found',
                      style: TextStyle(
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w600,
                          fontSize: 12
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  RaisedButton(onPressed: () {
                    Navigator.pushNamed(context, '/addNew');
                  },
                    color: Colors.lightBlue,
                    child: Text(
                      'Add post',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
