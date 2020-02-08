import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Stack(children: <Widget>[
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                title: new Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'NotoSansSC',
                    fontSize: 13.0,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.kitchen,
                  color: Colors.grey,
                ),
                title: new Text('SoufChef',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'NotoSansSC',
                      fontSize: 13.0,
                    )),
              ),
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                title: new Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'NotoSansSC',
                    fontSize: 13.0,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                title: new Text('Favourites',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'NotoSansSC',
                      fontSize: 13.0,
                    )),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  title: Text('Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'NotoSansSC',
                        fontSize: 13.0,
                      )))
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.5,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0))),
              child: Center(
                child: Text(
                  'My\nRecip',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'NotoSansSC',
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
          )
        ]),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu),
          title: Align(
            alignment: Alignment.topRight,
            child: Text(
              'Recipeze',
              style: TextStyle(
                  color: Colors.white, fontSize: 25.0, fontFamily: 'Norican'),
            ),
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
              child: Stack(children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.orange[300],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search movie',
                                hintStyle: TextStyle(color: Colors.white38),
                                icon:
                                    Icon(Icons.search, color: Colors.white38)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.08,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width * 0.01,
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'CATALOG NOW',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Find out dining emerging trends',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 10.0,
                                      letterSpacing: 0.3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        left: MediaQuery.of(context).size.width * 0.03,
                        top: MediaQuery.of(context).size.height * 0.16,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.36,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                //  final Product products = product[index];
                                return Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/chicken.png',
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                      Text(
                                        'chicken',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoSansSC',
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ))
                  ]),
                  Stack(children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.54,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[200],
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.05,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width * 0.01,
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'FEELS LIKE ALL',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Taste the local dellicacies Caribbean',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 10.0,
                                      letterSpacing: 0.3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        left: MediaQuery.of(context).size.width * 0.03,
                        top: MediaQuery.of(context).size.height * 0.13,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.36,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              // physics: BouncingScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                //  final Product products = product[index];
                                return Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.34,
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(0, 8),
                                            blurRadius: 8,
                                          ),
                                        ],
                                        color: Colors.white),
                                    child: Stack(children: <Widget>[
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/background.jpg'))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                            )),
                                      ),
                                      Positioned(
                                        // left: MediaQuery.of(context).size.width * 0.03,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.13,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              color: Colors.white),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0),
                                                  child: Text(
                                                    'The moon and sixpence',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        //fontFamily: 'NotoSansSC',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 3.0),
                                                  child: FlutterRatingBar(
                                                    itemSize: 13.0,
                                                    initialRating: 5,
                                                    fillColor:
                                                        Colors.orange[200],
                                                    borderColor: Colors.amber
                                                        .withAlpha(50),
                                                    allowHalfRating: true,
                                                    onRatingUpdate: (rating) {},
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 3.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.alarm,
                                                        size: 18.0,
                                                        color: Colors.black,
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Text(
                                                            'Pref',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0),
                                                          ),
                                                          Text(
                                                            '15 m',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Text(
                                                            'Cook',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0),
                                                          ),
                                                          Text(
                                                            '40 m',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Text(
                                                            'Ready in',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0),
                                                          ),
                                                          Text(
                                                            '55 m',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 20.0,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                );
                              }),
                        ))
                  ]),
                  Stack(children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.05,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width * 0.01,
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'COOK SMARTER, NOT HARDER',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Top most responsable recipes',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'NotoSansSC',
                                      fontSize: 10.0,
                                      letterSpacing: 0.3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        left: MediaQuery.of(context).size.width * 0.03,
                        top: MediaQuery.of(context).size.height * 0.13,
                        child: Container(
                          color: Colors.black,
                          height: MediaQuery.of(context).size.height * 0.36,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              // physics: BouncingScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                //  final Product products = product[index];
                                return Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.34,
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(0, 8),
                                            blurRadius: 8,
                                          ),
                                        ],
                                        color: Colors.white),
                                    child: Stack(children: <Widget>[
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/background.jpg'))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                            )),
                                      ),
                                      Positioned(
                                        // left: MediaQuery.of(context).size.width * 0.03,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.22,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.13,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              color: Colors.white),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0),
                                                  child: Text(
                                                    'The moon and sixpence',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        //fontFamily: 'NotoSansSC',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 3.0),
                                                  child: FlutterRatingBar(
                                                    itemSize: 13.0,
                                                    initialRating: 5,
                                                    fillColor:
                                                        Colors.orange[200],
                                                    borderColor: Colors.amber
                                                        .withAlpha(50),
                                                    allowHalfRating: true,
                                                    onRatingUpdate: (rating) {},
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 3.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.alarm,
                                                        size: 18.0,
                                                        color: Colors.black,
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Text(
                                                            'Pref',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0),
                                                          ),
                                                          Text(
                                                            '15 m',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Text(
                                                            'Cook',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0),
                                                          ),
                                                          Text(
                                                            '40 m',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: <Widget>[
                                                          Text(
                                                            'Ready in',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0),
                                                          ),
                                                          Text(
                                                            '55 m',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 10.0,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                );
                              }),
                        ))
                  ]),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )),
                        hintText: 'Search here',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'NotoSansSC',
                            fontSize: 13.0),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.01,
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'TASTE NOW',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'NotoSansSC',
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Stay Safe Eat Cake',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'NotoSansSC',
                                fontSize: 10.0,
                                letterSpacing: 0.3),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.03,
                top: MediaQuery.of(context).size.height * 0.25,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.36,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        //  final Product products = product[index];
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.34,
                            width: MediaQuery.of(context).size.width * 0.46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black38,
                                    offset: Offset(0, 8),
                                    blurRadius: 8,
                                  ),
                                ],
                                color: Colors.white),
                            child: Stack(children: <Widget>[
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/background.jpg'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    )),
                              ),
                              Positioned(
                                // left: MediaQuery.of(context).size.width * 0.03,
                                top: MediaQuery.of(context).size.height * 0.22,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            'The moon and sixpence',
                                            style: TextStyle(
                                                color: Colors.black,
                                                //fontFamily: 'NotoSansSC',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 3.0),
                                          child: FlutterRatingBar(
                                            itemSize: 13.0,
                                            initialRating: 5,
                                            fillColor: Colors.orange[200],
                                            borderColor:
                                                Colors.amber.withAlpha(50),
                                            allowHalfRating: true,
                                            onRatingUpdate: (rating) {},
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 3.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                Icons.alarm,
                                                size: 18.0,
                                                color: Colors.black,
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'Pref',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10.0),
                                                  ),
                                                  Text(
                                                    '15 m',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'Cook',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10.0),
                                                  ),
                                                  Text(
                                                    '40 m',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'Ready in',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10.0),
                                                  ),
                                                  Text(
                                                    '55 m',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20.0,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        );
                      }),
                ))
          ]))
        ]));
  }
}
