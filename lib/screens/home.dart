import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/addRecipeze.dart';
import 'package:flutter_food_app/screens/changePassword.dart';
import 'package:flutter_food_app/screens/login.dart';
import 'package:flutter_food_app/screens/myRecipeze.dart';
import 'package:flutter_food_app/screens/restaurants.dart';
import 'package:flutter_food_app/screens/signup.dart';
import 'package:flutter_food_app/widgets/homeRecipesList.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          title: Align(
            alignment: Alignment.topRight,
            child: Text(
              'Recipeze',
              style: TextStyle(
                  color: Colors.white, fontSize: 25.0, fontFamily: 'Norican'),
            ),
          ),
        ),
        drawer: buildDrawer(),
        body: ListView(children: <Widget>[
          Container(
              child: Stack(children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 280,
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
                  Container(
                    height: 230.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  color: Colors.black,
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                  height: MediaQuery.of(context).size.height *
                                      0.045,
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
                          SizedBox(
                            height: 150,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  //  final Product products = product[index];
                                  return buildContainer(context);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                ),
                                child: Container(
                                  color: Colors.black,
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                  height: MediaQuery.of(context).size.height *
                                      0.045,
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
                          SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            height: 225,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
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
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  color: Colors.black,
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                  height: MediaQuery.of(context).size.height *
                                      0.045,
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
                                      'Top most reasonsable recipes',
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
                          SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            height: 225,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
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
                        ],
                      ),
                    ),
                  ),
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
                  height: 10.0,
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
                SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  height: 225,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
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
                )
              ],
            ),
          ]))
        ]));
  }

  buildContainer(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RestaurantsPage()));
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 20.0,
          bottom: 20.0,
          left: 20.0,
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/chicken.png',
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
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
      ),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/user.png'),
                    radius: 38.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Alaa Sobhy',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orange[300],
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyHomePage()));
            },
          ),
          ListTile(
            title: Text(
              'Recipeze',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.local_dining,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyRecipezePage()));
            },
          ),
          ListTile(
            title: Text(
              'Baker',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.local_dining,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text(
              'Create Recipeze',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.monetization_on,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AddRecipezePage()));
            },
          ),
          ListTile(
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.tv,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text(
              'Register',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.directions_car,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MySignUpPage()));
            },
          ),
          ListTile(
            title: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.account_box,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyLogInPage()));
            },
          ),
          ListTile(
            title: Text(
              'Change Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.visibility_off,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyChangePasswordPage()));
            },
          ),
        ],
      ),
    );
  }
}
