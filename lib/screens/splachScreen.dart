import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/chooseCountry.dart';
import 'package:flutter_food_app/screens/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySplashPage extends StatefulWidget {
  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation, delayedDuration, muchDelayedDuration;
  Animation<Offset> position, offset;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));
    delayedDuration = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.bounceInOut)));
    muchDelayedDuration = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));
    position = Tween<Offset>(begin: Offset(0.0, -4.0), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
    offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 4.0)).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          buildBackdropFilter(context, width),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (BuildContext context, Widget child) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SlideTransition(
                            position: position,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Orderaty',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 45.0,
                                      fontFamily: 'Norican'),
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Container(
                                  width: 250.0,
                                  child: Text('Order Food Online',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 15.0,
                                          fontFamily: 'NotoSansSC',
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2.5)),
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Container(
                                  child: buildRow(context),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 70.0,
                          ),
                          ScaleTransition(
                            scale: delayedDuration,
                            child: Container(
                              child: Column(
                                children: <Widget>[
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
                                    child: buildRowSocial(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  BackdropFilter buildBackdropFilter(BuildContext context, double width) {
    return BackdropFilter(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/shrimp.jpg')),
        ),
        child: ClipRRect(
          child: Container(
            decoration: const BoxDecoration(color: Colors.black26),
          ),
        ),
      ),
      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
    );
  }

  Row buildRowSocial() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.black87),
          child: Icon(
            FontAwesomeIcons.facebookF,
            color: Colors.white,
          ),
        ),
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.black87),
          child: Icon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
          ),
        ),
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.black87),
          child: Icon(
            FontAwesomeIcons.googlePlusG,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Row buildRow(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyLogInPage()));
          },
          child: Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChooseCountry()));
          },
          child: Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
              color: Colors.orange[200],
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                'Choose your Country',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
