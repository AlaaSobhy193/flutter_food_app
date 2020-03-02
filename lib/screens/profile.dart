import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_food_app/widgets/followers.dart';
import 'package:flutter_food_app/widgets/following.dart';
import 'package:flutter_food_app/widgets/recipeze.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key key}) : super(key: key);

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              snap: true,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: AnimatedOpacity(
                  opacity: 1.0,
                  duration: Duration(milliseconds: 300),
                ),
                background: Container(
                  child: Stack(overflow: Overflow.visible, children: <Widget>[
                    buildBackdropFilter(context),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: buildColumnDetails(),
                      ),
                    )
                  ]),
                ),
              ),
              bottom: buildTabBar(),
            )
          ];
        },
        body: buildTabBarView(),
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

  Column buildColumnDetails() {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 35.0,
          child: Image.asset('assets/user.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            'Nicolas Cage',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              // fontFamily: 'NotoSansSC',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            'New York, USA',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
              // fontFamily: 'NotoSansSC',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: FlutterRatingBar(
            itemSize: 16.0,
            initialRating: 5,
            fillColor: Colors.orange[300],
            borderColor: Colors.amber.withAlpha(50),
            allowHalfRating: true,
            onRatingUpdate: (rating) {},
          ),
        ),
      ],
    );
  }

  TabBarView buildTabBarView() {
    return TabBarView(
      controller: controller,
      children: <Widget>[
        Recipeze(),
        Followers(),
        Following(),
      ],
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      controller: controller,
      isScrollable: true,
      indicatorColor: Colors.white,
      tabs: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Tab(
            text: "  20 \nRecipeze",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15.0),
          child: Tab(
            text: "  120K \nFollowers",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Tab(
            text: "  138K \nFollowing",
          ),
        ),
      ],
    );
  }
}
