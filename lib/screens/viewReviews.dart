import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ViewReviews extends StatefulWidget {
  @override
  _ViewReviewsState createState() => _ViewReviewsState();
}

class _ViewReviewsState extends State<ViewReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reviews',
          style: TextStyle(
              color: Colors.white, fontSize: 35.0, fontFamily: 'Norican'),
        ),
        backgroundColor: Colors.orange[300],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10.0),
                    child: buildContainerDetails(),
                  );
                }),
          ),
          GestureDetector(
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
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    'ADD REVIEW',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  dialogContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Container(
          height: 450,
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
                      'Add Review',
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
                  height: 20.0,
                ),
                Center(
                  child: FlutterRatingBar(
                    itemSize: 50.0,
                    initialRating: 5,
                    fillColor: Colors.orange[300],
                    borderColor: Colors.amber.withAlpha(50),
                    allowHalfRating: true,
                    onRatingUpdate: (rating) {},
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey[200],
                            width: 1.0,
                          )),
                      hintText: 'Write Your Review',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ])),
    );
  }

  Container buildContainerDetails() {
    return Container(
        height: 150.0,
        width: double.infinity,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlutterRatingBar(
                        itemSize: 20.0,
                        initialRating: 5,
                        fillColor: Colors.orange[300],
                        borderColor: Colors.amber.withAlpha(50),
                        allowHalfRating: true,
                        onRatingUpdate: (rating) {},
                      ),
                      Text(
                        '20-20-2020',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Very fast delivery',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ));
  }
}
