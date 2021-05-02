import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_undefined/components/App_bar.dart';
import 'package:team_undefined/pages/app_drawer.dart';
import 'package:team_undefined/pages/feedpage_onclick.dart';
import 'package:team_undefined/components/App_bar.dart';

enum WidgetMarker{
  missing,found,extra
}
class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int _selectedItemIndex = 0;
  WidgetMarker selectedwidgetmarker=WidgetMarker.missing;
  List<bool> isSelected = [false , false];
  @override
  Widget getcustomgridleview(){
    switch(selectedwidgetmarker){
      case WidgetMarker.missing:
        return getmissingview();
      case WidgetMarker.found:
        return getfoundmissingview();
      case WidgetMarker.extra:
        return getmissingview();
    }
    return getcustomgridleview();
  }
  Widget getmissingview(){
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 10,
      children: [

        buildPictureCard('https://images.unsplash.com/photo-1595064585256-007759ad2316?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=680&q=80'),
        buildPictureCard('https://images.unsplash.com/photo-1619451831105-599f9b2b94f3?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
        buildPictureCard('https://images.unsplash.com/photo-1615942581207-42a20ca5cd5e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
        buildPictureCard('https://images.unsplash.com/photo-1598527661665-af197ec31685?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1862&q=80'),
        buildPictureCard('https://images.unsplash.com/photo-1614398077768-f6869e7a8137?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=658&q=80'),
        buildPictureCard('https://images.unsplash.com/photo-1588701107566-af76b932e2e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
        buildPictureCard('https://images.unsplash.com/photo-1610919207284-983b309c8469?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
        buildPictureCard('https://images.unsplash.com/photo-1611903708839-31b28b003935?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
        buildPictureCard('https://images.unsplash.com/photo-1615942581207-42a20ca5cd5e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
        buildPictureCard('https://images.unsplash.com/photo-1578923813875-bf8b98f36b0f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzB8fGNoaWxkJTIwcG90cmFpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
        buildPictureCard('https://images.unsplash.com/photo-1616286949780-50d29ce2ae63?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU3fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
        buildPictureCard('https://images.unsplash.com/photo-1544159729-c9380464148c?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
      ],
    );
  }
  Widget getfoundmissingview(){
    return GridView.count(
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
        buildPictureCard('https://images.unsplash.com/photo-1616286949780-50d29ce2ae63?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU3fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
        buildPictureCard('https://images.unsplash.com/photo-1544159729-c9380464148c?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
        buildPictureCard('https://images.unsplash.com/photo-1595064585256-007759ad2316?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=680&q=80'),
        buildPictureCard('https://images.unsplash.com/photo-1619451831105-599f9b2b94f3?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
        buildPictureCard('https://images.unsplash.com/photo-1615942581207-42a20ca5cd5e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
        buildPictureCard('https://images.unsplash.com/photo-1598527661665-af197ec31685?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1862&q=80'),
      ],
    );
  }

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
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                'Explore Feed',
                style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[500],
                //border: Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: ToggleButtons(
                borderRadius: BorderRadius.circular(30.0),
                isSelected: isSelected,
                //renderBorder: true,
                color: Colors.black,
                fillColor: Colors.white,
                hoverColor: Colors.white,
                selectedColor: Colors.black,
                borderColor: Colors.grey[500],
                selectedBorderColor: Colors.grey[500],

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70.0, 7.0, 70.0, 7.0),
                    child: Text(
                      'MISSING',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70.0, 7.0, 70.0, 7.0),
                    child: Text(
                      'FOUND',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),

                ],
                onPressed: (index) {
                  setState(() {
                    for (var i = 0; i < isSelected.length; i++) {
                      if (i == index) {
                        isSelected[i] = true;
                      }
                      else {
                        isSelected[i] = false;
                      }
                    }
                    if (index == 0) {
                      selectedwidgetmarker = WidgetMarker.missing;
                    }
                    else {
                      selectedwidgetmarker = WidgetMarker.found;
                    }
                  });
                },

              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 0, right: 0, top: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.15),
                ),

                child: getcustomgridleview(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey[200],
          ),
          child:
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
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
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(1),
                spreadRadius: 1,
              )
            ],
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(10)),
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

  Card buildPictureCard(String url)
  {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed('/feedonclick', arguments: url,);
        },
        child: Hero(
          tag: url,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                )
            ),
          ),
        ),
      ),

    );
  }
}



