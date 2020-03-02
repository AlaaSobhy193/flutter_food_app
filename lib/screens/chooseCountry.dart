import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/selectRegion.dart';

class ChooseCountry extends StatefulWidget {
  @override
  _ChooseCountryState createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> delayedDuration;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    delayedDuration = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.bounceInOut)));
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
        body: Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        buildBackdropFilter(context, width),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: ScaleTransition(
            scale: delayedDuration,
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              child: dialogContent(context),
            ),
          ),
        )
      ],
    ));
  }

  dialogContent(BuildContext context) {
    return Container(
        height: 450,
        width: 300,
        padding: EdgeInsets.only(
          top: 25.0,
          left: 15,
          right: 15,
        ),
        margin: EdgeInsets.only(top: 20),
        decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              )
            ]),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Orderaty',
                style: TextStyle(
                    color: Colors.orange[300],
                    fontSize: 45.0,
                    fontFamily: 'Norican',
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 250.0,
                  child: Text('Choose Your Country',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.0)),
                ),
              ),
              SizedBox(height: 24.0),
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 8.0, bottom: 8.0),
                        child: Image.asset(
                          'assets/egypt.png',
                          height: 40.0,
                          width: 50.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Text('Egypt',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontFamily: 'NotoSansSC',
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectRegion()));
                  },
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        'Done',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ]));
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
}
