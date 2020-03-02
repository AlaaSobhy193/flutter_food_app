import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/homeNavigationBar.dart';

class SelectRegion extends StatefulWidget {
  @override
  _SelectRegionState createState() => _SelectRegionState();
}

class _SelectRegionState extends State<SelectRegion>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> position, offset;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 4.0)).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));

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
          SlideTransition(
            position: offset,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 200.0, left: 25.0, right: 25.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 80,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                      onTap: () => _chooseCity(),
                      child: Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Choose your city',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                      onTap: () => _chooseRegion(),
                      child: Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Choose your region',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationSheet()));
                      },
                      child: Container(
                        height: 60.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 3.0,
                              style: BorderStyle.solid),
                        ),
                        child: Center(
                          child: Text(
                            'SEARCH',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
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

  _chooseCity() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF737373),
            child: Container(
              child: _buildBottomSelectCity(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
              ),
            ),
          );
        });
  }

  _buildBottomSelectCity() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            top: 50.0,
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
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
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[400],
                size: 35.0,
              ),
              hintText: 'Choose your city',
              hintStyle: TextStyle(
                  color: Colors.red,
                  fontFamily: 'NotoSansSC',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 15.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Ismailia',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 25.0),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 15.0, right: 15.0),
                      child: Divider(
                        color: Colors.black,
                        height: 2.0,
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }

  _chooseRegion() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF737373),
            child: Container(
              child: _buildBottomSelectRegion(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
              ),
            ),
          );
        });
  }

  _buildBottomSelectRegion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            top: 50.0,
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
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
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[400],
                size: 35.0,
              ),
              hintText: 'Choose your region',
              hintStyle: TextStyle(
                  color: Colors.red,
                  fontFamily: 'NotoSansSC',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 15.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'ElSoltan Hussien',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 25.0),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 15.0, right: 15.0),
                      child: Divider(
                        color: Colors.black,
                        height: 2.0,
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }
}
