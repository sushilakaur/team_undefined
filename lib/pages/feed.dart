import 'package:flutter/cupertino.dart';
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50.0,
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Missing',
                        ),
                        Icon(
                          Icons.more_vert_rounded,
                        ),
                        Text(
                          'Found',
                        )
                      ],
                    )
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 0, right: 0, top: 8),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.15),
                    ),

                child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                children: [
                  buildPictureCard('https://images.unsplash.com/photo-1614398077768-f6869e7a8137?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=658&q=80'),
                  buildPictureCard('https://images.unsplash.com/photo-1588701107566-af76b932e2e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                  buildPictureCard('https://images.unsplash.com/photo-1610919207284-983b309c8469?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                  buildPictureCard('https://images.unsplash.com/photo-1611903708839-31b28b003935?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                  buildPictureCard('https://images.unsplash.com/photo-1615942581207-42a20ca5cd5e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
                  buildPictureCard('https://images.unsplash.com/photo-1578923813875-bf8b98f36b0f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzB8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                  buildPictureCard('https://images.unsplash.com/photo-1614398077768-f6869e7a8137?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=658&q=80'),
                  buildPictureCard('https://images.unsplash.com/photo-1588701107566-af76b932e2e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                  buildPictureCard('https://images.unsplash.com/photo-1610919207284-983b309c8469?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                  buildPictureCard('https://images.unsplash.com/photo-1611903708839-31b28b003935?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                  buildPictureCard('https://images.unsplash.com/photo-1615942581207-42a20ca5cd5e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
                  buildPictureCard('https://images.unsplash.com/photo-1578923813875-bf8b98f36b0f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzB8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Card buildPictureCard(String url)
{
  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(url),
          )
      ),
    ),
  );
}