import 'dart:ui';

import 'package:flutter/material.dart';

class Confirmation extends StatefulWidget {
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            buildBackdropFilter(context),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.20,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
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
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
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
                            hintText: 'Your Name',
                            hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontFamily: 'NotoSansSC',
                                fontSize: 13.0)),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
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
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontFamily: 'NotoSansSC',
                                fontSize: 13.0)),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
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
              fit: BoxFit.cover, image: AssetImage('assets/shrimp.jpg')),
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
