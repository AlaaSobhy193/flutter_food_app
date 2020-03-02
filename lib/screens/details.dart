import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/viewReviews.dart';
import 'package:flutter_food_app/widgets/reviews.dart';

class MyDetailsPage extends StatefulWidget {
  const MyDetailsPage({Key key}) : super(key: key);

  @override
  _MyDetailsPageState createState() => _MyDetailsPageState();
}

class _MyDetailsPageState extends State<MyDetailsPage>
    with TickerProviderStateMixin {
  TabController controller;
  AnimationController _controller;
  Animation<double> _animation, delayedDuration, muchDelayedDuration;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 10, vsync: this);
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _animation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.ease));
    delayedDuration = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));
    muchDelayedDuration = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget child) {
          return ScaleTransition(
            scale: _animation,
            child: Scaffold(
                extendBody: true,
                body: NestedScrollView(
                    physics: BouncingScrollPhysics(),
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[buildSliverSafeArea()];
                    },
                    body: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 15.0),
                              child: Text(
                                'Menu',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            buildTabbar(),
                            buildExpandedTabBarView(),
                          ]),
                    ))),
          );
        });
  }

  Expanded buildExpandedTabBarView() {
    return Expanded(
      child: Container(
        child: TabBarView(
          controller: controller,
          children: <Widget>[
            Reviews(),
            Reviews(),
            Reviews(),
            Reviews(),
            Reviews(),
            Reviews(),
            Reviews(),
            Reviews(),
            Reviews(),
            Reviews(),
          ],
        ),
      ),
    );
  }

  SliverSafeArea buildSliverSafeArea() {
    return SliverSafeArea(
        top: false,
        sliver: SliverAppBar(
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            snap: true,
            actions: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ],
              )
            ],
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: AnimatedOpacity(
                  opacity: 1.0,
                  duration: Duration(milliseconds: 300),
                  child: Text('Wild burger', style: TextStyle(fontSize: 20.0))),
              background: Container(
                  child: Stack(overflow: Overflow.visible, children: <Widget>[
                buildBackdropFilter(context),
                Positioned(
                  top: 120,
                  bottom: 0.0,
                  left: 50.0,
                  right: 0.0,
                  child: buildDetails(),
                )
              ])),
            )));
  }

  buildDetails() {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ViewReviews()));
          },
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.white.withOpacity(0.6),
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '2.5',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSansSC',
                    ),
                  ),
                ],
              ),
              Text(
                'View Reviews',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NotoSansSC',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, bottom: 60.0),
          child: Container(
            height: 50.0,
            width: 1.0,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: InkWell(
            onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    child: dialogContent(context),
                  );
                }),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.info,
                  color: Colors.white.withOpacity(0.6),
                  size: 20.0,
                ),
                Text(
                  'View Info',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NotoSansSC',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  dialogContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 50.0),
      child: Container(
          height: 500,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'restaurant information',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontFamily: 'Norican',
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                        onPressed: () => Navigator.pop(context))
                  ],
                ),
                Divider(
                  height: 10.0,
                  color: Colors.grey[300],
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'Wild Burger',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Address',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'AlGamaa ElAdema St,Ismailia, St3',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Open Time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '10 PM',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Close Time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '1 AM',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Refill Service',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Avilable',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Delivery Managed by',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Orderaty delivery',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ])),
    );
  }

  BackdropFilter buildBackdropFilter(BuildContext context) {
    return BackdropFilter(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/burger.jpg')),
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

  buildTabbar() {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.orange[200]),
        child: TabBar(
            isScrollable: true,
            controller: controller,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.black),
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Main Dish",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Pasta",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Burger",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Chicken",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Pizza",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Soup",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Grill",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Drinks",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Desserts",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Appetizers",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
