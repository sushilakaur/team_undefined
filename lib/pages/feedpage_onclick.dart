import 'package:flutter/material.dart';
import 'package:team_undefined/pages/app_drawer.dart';

class FeedOnClick extends StatefulWidget {
  @override
  _FeedOnClickState createState() => _FeedOnClickState();
}

class _FeedOnClickState extends State<FeedOnClick> {

  @override
  Widget build(BuildContext context) {
    String url = ModalRoute.of(context).settings.arguments ;
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text(
                'DETAILS',
                style: TextStyle(
                  fontSize: 44,
                  color: Colors.black
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 10),
              children: [
                buildPostSection(url, 'https://images.unsplash.com/photo-1614398077768-f6869e7a8137?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=658&q=80'),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Container buildPostSection(String url, String urlProfilePhoto) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // buildPostFirstRow(urlProfilePhoto),
          SizedBox(
            height: 10,
          ),
          buildPostPicture(url),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                'Maria Yung',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '19',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'GENDER',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Female',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'LOCATION FOUND',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '328b Tolls road,London,19274',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'DATE',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "28-5-21",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'TIME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "4 PM",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'DESCRIPTION',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Brown hair,height about 5'5,was wearing black tee and blue jeans had a silver watch",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'DISTICTIVE FEATURES',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Blue eyes, tattoo on arm, mole on left cheek",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 100.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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
                      child:
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'E-mail',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      color: Colors.lightBlue,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Contact Number',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Row buildPostFirstRow(String urlProfilePhoto) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Row(
  //         // crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //             //  Hero(
  //             //   tag: urlProfilePhoto,
  //             //   child: CircleAvatar(
  //             //     radius: 12,
  //             //     backgroundImage: NetworkImage(urlProfilePhoto),
  //             //   ),
  //             // ),
  //           SizedBox(
  //             width: 20,
  //           ),
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "Tom Smith",
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.black
  //                 ),
  //               ),
  //               Row(
  //                 children: [
  //                   Icon(
  //                     Icons.location_on,
  //                     size: 12,
  //                       color: Colors.grey[500],
  //                   ),
  //                   SizedBox(
  //                     width: 5,
  //                   ),
  //                   Text(
  //                     "Iceland",
  //                     style: TextStyle(
  //                         fontSize: 12,
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.grey[500]),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           )
  //         ],
  //       ),
  //       Icon(Icons.more_vert)
  //     ],
  //   );
  // }

  Widget buildPostPicture(String url) {
    return Container(
          height: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url),
              )),
        );

  }
}
