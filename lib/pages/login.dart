import 'package:flutter/material.dart';
import 'package:team_undefined/pages/home.dart';
import 'package:team_undefined/utils/authentication.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name, city;
  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Text(
            'TRAFFIKCOM',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildNameRow() {
    return Padding(
      padding: EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 5.0),
      child: TextFormField(
        keyboardType: TextInputType.name,
        onChanged: (value) {
          setState(() {
            name = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_circle,
              color: Colors.lightBlue,
            ),
            labelText: 'Your Name'),
      ),
    );
  }

  Widget _buildLocationRow() {
    return Padding(
      padding: EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 5.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            city = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.add_location_sharp,
            color: Colors.lightBlue,
          ),
          labelText: 'Enter Your City',
        ),
      ),
    );
  }


  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20, top: 20),
          child: FlatButton(
            padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/home');

            },
            child: Text(
              'Log in with Google',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSignUpButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20, top: 20),
          child: FlatButton(
            padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () async {
               Navigator.pushNamed(context, '/home');

            },
            child: Text(
              'Sign up with google',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }

//   {
//   Navigator.pushNamed(context, '/home');
//
// }

  Widget _buildOrRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              Divider(
                color : Colors.black,
                thickness: 600.0,
              ),
              Text(
                ' OR ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Divider(
                color : Colors.grey,
                thickness: 60.0,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Hey There!",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30,
                        ),
                      ),
                    ],
                  ),
                  _buildNameRow(),
                  _buildLocationRow(),
                  _buildSignUpButton(),
                  _buildOrRow(),
                  _buildLoginButton(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000000),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(60),
                    bottomRight: const Radius.circular(60),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLogo(),
                _buildContainer(),
              ],
            )
          ],
        ),
    );
  }
}
