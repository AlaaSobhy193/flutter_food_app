import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/addCart.dart';

class OfferDetails extends StatefulWidget {
  @override
  _OfferDetailsState createState() => _OfferDetailsState();
}

class _OfferDetailsState extends State<OfferDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            buildBackdropFilter(context),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 5.0,
                            bottom: 5.0,
                          ),
                          child: Image.asset(
                            'assets/burger.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Burger, Chicken and Pizza Burger',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Order Your Food Online From Wild Burger',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddToCart()));
                      },
                      child: Center(
                        child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.orange[200],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
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
