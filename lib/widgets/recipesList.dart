import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipesList extends StatefulWidget {
  const RecipesList({Key key}) : super(key: key);

  @override
  _RecipesListState createState() => _RecipesListState();
}

class _RecipesListState extends State<RecipesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
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
                  )),
            )
          ]),
          buildBottomDesciption(context),
        ],
      ),
    );
  }

  Container buildBottomDesciption(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'The moon and sixpence',
                    style: TextStyle(
                        color: Colors.black,
                        //fontFamily: 'NotoSansSC',
                        fontWeight: FontWeight.w900,
                        fontSize: 14.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 3.0),
                  child: FlutterRatingBar(
                    itemSize: 15.0,
                    initialRating: 5,
                    fillColor: Colors.orange[200],
                    borderColor: Colors.amber.withAlpha(50),
                    allowHalfRating: true,
                    onRatingUpdate: (rating) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.alarm,
                        size: 18.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Pref',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10.0),
                              ),
                              Text(
                                '15 m',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Cook',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10.0),
                              ),
                              Text(
                                '40 m',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Ready in',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10.0),
                              ),
                              Text(
                                '55 m',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                color: Colors.grey[200],
                child: Icon(Icons.edit),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                color: Colors.grey[200],
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
