import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/login.dart';

class MySignUpPage extends StatefulWidget {
  MySignUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              buildBackdropFilter(context),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.05,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 20.0,
                                  color: Colors.white.withOpacity(0.8),
                                )),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Recipeze',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45.0,
                                fontFamily: 'Norican'),
                          ),
                          Container(
                            width: 250.0,
                            child: Text('Create an Account',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15.0,
                                    fontFamily: 'NotoSansSC',
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 3.5)),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.orange[300],
                                    width: 2.0,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.8),
                                    width: 1.0,
                                  )),
                                  suffixIcon: Icon(
                                    Icons.account_box,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 10.0)),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.orange[300],
                                    width: 2.0,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.8),
                                    width: 1.0,
                                  )),
                                  suffixIcon: Icon(
                                    Icons.phone_android,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  hintText: 'Mobile Number',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 10.0)),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.orange[300],
                                    width: 2.0,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.8),
                                    width: 1.0,
                                  )),
                                  suffixIcon: Icon(
                                    Icons.mail,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 10.0)),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.orange[300],
                                    width: 2.0,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.8),
                                    width: 1.0,
                                  )),
                                  suffixIcon: Icon(
                                    Icons.visibility_off,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 10.0)),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.orange[300],
                                    width: 2.0,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.8),
                                    width: 1.0,
                                  )),
                                  suffixIcon: Icon(
                                    Icons.visibility_off,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  hintText: 'Confirm Password',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 10.0)),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyLogInPage()));
                              },
                              child: Container(
                                height: 50.0,
                                width: MediaQuery.of(context).size.width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'SIGNUP!',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Already have an Account? LOGIN',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 13.0,
                              fontFamily: 'NotoSansSC',
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  BackdropFilter buildBackdropFilter(BuildContext context) {
    return BackdropFilter(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/background.jpg')),
        ),
        child: ClipRRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 0,
                sigmaY: 0,
              ),
              child: Container(
                decoration: const BoxDecoration(color: Colors.black45),
              )),
        ),
      ),
      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
    );
  }
}
