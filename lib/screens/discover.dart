import 'package:flutter/material.dart';
import 'package:flutter_food_app/widgets/homeRecipesList.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Discover',
            style: TextStyle(
                color: Colors.black, fontSize: 35.0, fontFamily: 'Norican'),
          ),
          backgroundColor: Colors.orange[300],
          elevation: 0.0,
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
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.orange[300],
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 20.0),
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
                                hintText: 'Search for nearby restaurants',
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, right: 15.0),
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
