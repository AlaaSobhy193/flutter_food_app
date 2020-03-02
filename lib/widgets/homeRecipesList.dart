import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_food_app/screens/details.dart';

class ResturantsList extends StatefulWidget {
  const ResturantsList({Key key}) : super(key: key);

  @override
  _ResturantsListState createState() => _ResturantsListState();
}

class _ResturantsListState extends State<ResturantsList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyDetailsPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
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
                        fit: BoxFit.cover, image: AssetImage('assets/4.jpg'))),
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
      ),
    );
  }

  Container buildBottomDesciption(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 10.0, bottom: 5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
              ),
              child: Text(
                'Wild Burger',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 3.0),
              child: Text(
                'ElSoltan Hussien Street',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 3.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlutterRatingBar(
                    itemSize: 15.0,
                    initialRating: 5,
                    fillColor: Colors.orange[200],
                    borderColor: Colors.amber.withAlpha(50),
                    allowHalfRating: true,
                    onRatingUpdate: (rating) {},
                  ),
                  Text(
                    'Open',
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
