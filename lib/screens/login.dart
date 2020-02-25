import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/forgetPassword.dart';
import 'package:flutter_food_app/screens/home.dart';
import 'package:flutter_food_app/screens/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLogInPage extends StatefulWidget {
  MyLogInPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLogInPage> {
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
                            'Recipeze',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45.0,
                                fontFamily: 'Norican'),
                          ),
                          Container(
                            width: 250.0,
                            child: Text('We serve for YOU',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15.0,
                                    fontFamily: 'NotoSansSC',
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.5)),
                          ),
                          SizedBox(
                            height: 50.0,
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
                                hintText: 'Email or Mobile Number',
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
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 13.0)),
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
                                        builder: (context) => MyHomePage()));
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
                                    'Log In',
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
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MyForgetPasswordPage()));
                              },
                              child: Text(
                                'Forget Password?',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15.0,
                                  fontFamily: 'NotoSansSC',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
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
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MySignUpPage()));
                            },
                            child: Text(
                              'New to Recipeze?',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 15.0,
                                fontFamily: 'NotoSansSC',
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
