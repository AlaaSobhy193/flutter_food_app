import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/discover.dart';
import 'package:flutter_food_app/screens/home.dart';
import 'package:flutter_food_app/screens/myRecipeze.dart';
import 'package:flutter_food_app/screens/profile.dart';

class BottomContainer extends StatefulWidget {
  @override
  _BottomContainerState createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation, delayedDuration;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));
    delayedDuration = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.fastOutSlowIn)));
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    _controller.forward();
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget child) {
          return Stack(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  FadeTransition(
                    opacity: _animation,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: MyHomePage(),
                    ),
                  ),
                ],
              ),
              buildAlign(),
              Transform(
                transform: Matrix4.translationValues(
                    delayedDuration.value * width, 0.0, 0.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyRecipezePage()));
                    },
                    child: Container(
                      height: 75,
                      width: 65,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'My',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Recip',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  buildAlign() {
    return Transform(
      transform: Matrix4.translationValues(
          delayedDuration.value * MediaQuery.of(context).size.width, 0.0, 0.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 10),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Discover()));
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 25.0,
                      ),
                      Text(
                        'Discover',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0, top: 10),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                    Text(
                      'Favorite',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyProfilePage()));
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 20.0,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
