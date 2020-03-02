import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  const Recipes({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        'Recipeze',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: buildRecipeze(),
                          );
                        }),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  buildRecipeze() {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0, 8),
                    blurRadius: 8,
                  ),
                ],
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/background.jpg'))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            top: 110.0,
            left: 2.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'The moon and sixpence',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Recipeze Packages',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 125.0,
                ),
                Container(
                  height: 30.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: (Radius.circular(5.0)),
                          topLeft: (Radius.circular(5.0))),
                      color: Colors.orange[200]),
                  child: Center(
                    child: Text(
                      '50 m',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
