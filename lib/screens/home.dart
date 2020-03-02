import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/changePassword.dart';
import 'package:flutter_food_app/screens/discover.dart';
import 'package:flutter_food_app/screens/login.dart';
import 'package:flutter_food_app/screens/offers.dart';
import 'package:flutter_food_app/screens/restaurants.dart';
import 'package:flutter_food_app/screens/signup.dart';
import 'package:flutter_food_app/widgets/homeRecipesList.dart';
import 'package:page_indicator/page_indicator.dart';

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
              'Orderaty',
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
                  buildTrendingRestaurants(context),
                  buildTrendingFood(context),
                ],
              ),
            ),
            buildOffers(context),
          ]))
        ]));
  }

  Container buildOffers(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
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
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                      child: Container(
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.01,
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                    ),
                    Text(
                      'Offers',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'NotoSansSC',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Offers()));
                  },
                  child: Text(
                    'SeeAll',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'NotoSansSC',
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Container(
                height: 190.0,
                child: PageIndicatorContainer(
                  align: IndicatorAlign.bottom,
                  indicatorColor: Colors.white,
                  indicatorSelectorColor: Colors.orange[200],
                  indicatorSpace: 8.0,
                  shape: IndicatorShape.circle(size: 8.0),
                  padding: EdgeInsets.all(5.0),
                  pageView: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: <Widget>[
                            Container(
                              height: 220.0,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/1.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        );
                      }),
                  length: 5,
                )),
          )
        ],
      ),
    );
  }

  Container buildTrendingRestaurants(BuildContext context) {
    return Container(
      height: 380,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                        child: Container(
                          color: Colors.black,
                          width: MediaQuery.of(context).size.width * 0.01,
                          height: MediaQuery.of(context).size.height * 0.045,
                        ),
                      ),
                      Text(
                        'Trending Resturants',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'NotoSansSC',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantsPage()));
                    },
                    child: Text(
                      'SeeAll',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'NotoSansSC',
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              ),
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
    );
  }

  Container buildTrendingFood(BuildContext context) {
    return Container(
      height: 260.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                    child: Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.01,
                      height: MediaQuery.of(context).size.height * 0.045,
                    ),
                  ),
                  Text(
                    'Trending Food',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'NotoSansSC',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    //  final Product products = product[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RestaurantsPage()));
                      },
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     PageRouteBuilder(
                      //       pageBuilder:
                      //           (context, animation, secondaryAnimation) =>
                      //               RestaurantsPage(),
                      //       transitionsBuilder: (context, animation,
                      //               secondaryAnimation, child) =>
                      //           ScaleTransition(scale: animation, child: child),
                      //       transitionDuration: Duration(milliseconds: 2000),
                      //     ),
                      //   );
                      // },
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
                  }),
            ),
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
              'Discover',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            leading: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Discover()));
            },
          ),
          ListTile(
            title: Text(
              'Offers',
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
                  builder: (BuildContext context) => Offers()));
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
