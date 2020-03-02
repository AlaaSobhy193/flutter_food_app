import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/offerDetails.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Offers',
            style: TextStyle(
                color: Colors.white, fontSize: 35.0, fontFamily: 'Norican'),
          ),
          backgroundColor: Colors.orange[300],
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return buildDetails();
          },
        ));
  }

  InkWell buildDetails() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OfferDetails()));
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10.0),
            child: Row(
              children: <Widget>[
                Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300], width: 1),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: Image.asset(
                        'assets/burger.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '25% oFF From Wild Burger',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        ' Thid Offer is Valid on Specific Items',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        ' Wild Burger',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 20.0,
            thickness: 0.5,
          )
        ],
      ),
    );
  }
}
