import 'package:flutter/material.dart';

class ResturantsList extends StatelessWidget {
  const ResturantsList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.50,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width * 0.45,
              height: height * 0.45,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 8),
                    blurRadius: 8,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      height: height * 0.34,
                      width: width * 0.45,
                      child: Card(
                        color: Colors.grey[300],
                        child: Image.asset('assets/background.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'product',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, top: 5.0),
                                child: Text(
                                  '555\$',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 5.0, top: 5.0),
                                child: Text(
                                  'Plain blue',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, bottom: 8.0, top: 8.0),
                                  child: Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 15.0,
                                )
                              ]),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 5.0, top: 5.0, bottom: 5.0),
                                child: Text(
                                  '1200 Sales',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13.0,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
