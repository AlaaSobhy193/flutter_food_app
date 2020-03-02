import 'package:flutter/material.dart';
import 'package:flutter_food_app/widgets/dialog.dart';

class Followers extends StatelessWidget {
  const Followers({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2.0,
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.blueGrey[50],
                        width: 1.0,
                      )),
                  hintText: 'Find Your Destinations',
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildFollwers(context),
                    );
                  }),
            ),
          ),
        ],
      ),
    ]));
  }

  buildFollwers(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            child: Image.asset('assets/user.png'),
            radius: 35.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Nicolas Cage',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            'New York, USA',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ], //
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => CustomDialog(
                                  title: "Remove Follower?",
                                  description:
                                      "Flutter Tutorial is best provide tutorial.",
                                  buttonText1: "Remove",
                                  buttonText2: 'Cancel',
                                  image: 'assets/user.png'));
                        },
                        child: Container(
                          height: 40.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 5.0,
            height: 10.0,
          )
        ],
      ),
    );
  }
}
