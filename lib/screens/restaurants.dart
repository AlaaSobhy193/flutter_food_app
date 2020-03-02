import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/widgets/homeRecipesList.dart';

class RestaurantsPage extends StatefulWidget {
  RestaurantsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Restaurants',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Stack(children: <Widget>[
          Container(
            child: ListView(children: <Widget>[
              Container(
                  child: Stack(children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.orange[300],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 25.0),
                      child: Text(
                        'Restaurants',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'NotoSansSC',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, right: 25.0),
                  child: SizedBox(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          //  final Product products = product[index];
                          return Container(
                              padding: EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                                left: 20.0,
                              ),
                              child: ResturantsList());
                        }),
                  ),
                ),
              ]))
            ]),
          )
        ]));
  }
}
