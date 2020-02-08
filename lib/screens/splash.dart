import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/login.dart';
import 'package:flutter_food_app/screens/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySplashPage extends StatefulWidget {
  MySplashPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          BackdropFilter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/background.jpg')),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 0,
                      sigmaY: 0,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.black26),
                    )),
              ),
            ),
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Recipeze',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Norican'),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                          'Find and share everyday\ncooking inspiration on Recipeze',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15.0,
                            fontFamily: 'NotoSansSC',
                          )),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyLogInPage()));
                          },
                          child: Container(
                            height: 50.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MySignUpPage()));
                          },
                          child: Container(
                            height: 50.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              color: Colors.orange[200],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                    Text(
                      'or log in With',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 15.0,
                        fontFamily: 'NotoSansSC',
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: 230.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.black87),
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.black87),
                            child: Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.black87),
                            child: Icon(
                              FontAwesomeIcons.googlePlusG,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
