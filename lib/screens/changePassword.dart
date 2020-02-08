import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/login.dart';

class MyChangePasswordPage extends StatefulWidget {
  MyChangePasswordPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyChangePasswordPageState createState() => _MyChangePasswordPageState();
}

class _MyChangePasswordPageState extends State<MyChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
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
                            decoration:
                                const BoxDecoration(color: Colors.black45),
                          )),
                    ),
                  ),
                  filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
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
                            'Change Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45.0,
                                fontFamily: 'Norican'),
                          ),
                          SizedBox(
                            height: 40.0,
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
                                hintText: 'Current Password ',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontFamily: 'NotoSansSC',
                                    fontSize: 13.0),
                              ),
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
                                hintText: 'New Password ',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontFamily: 'NotoSansSC',
                                    fontSize: 13.0),
                              ),
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
                                hintText: 'Confirm New Password ',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontFamily: 'NotoSansSC',
                                    fontSize: 13.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
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
                                    'Save',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
