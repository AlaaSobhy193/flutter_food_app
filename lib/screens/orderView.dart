import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/confirmation.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: buildStack(context),
      ),
    );
  }

  Stack buildStack(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height - 400,
        ),
        Container(
          width: double.infinity,
          height: 200.0,
          child: Image.asset(
            'assets/burger.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20.0,
                  color: Colors.white.withOpacity(0.8),
                )),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height - 480,
          left: MediaQuery.of(context).size.width - 340,
          child: Card(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: MediaQuery.of(context).size.height - 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: Colors.white,
              ),
              child: buildColumnOrders(),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 15.0, bottom: 15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Confirmation()));
              },
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    'CONFIRM',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column buildColumnOrders() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Order Review',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 110.0, right: 110.0),
          child: Divider(
            color: Colors.grey[600],
            height: 5.0,
            thickness: 4,
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 35.0,
                        width: 35.0,
                        color: Colors.orange[300],
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                      ),
                      Text(
                        'Beef Burger',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0),
                      ),
                      Text(
                        '60.0L.E',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
          child: Divider(
            color: Colors.grey[700],
            thickness: 0.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 35.0,
                    width: 35.0,
                    color: Colors.orange[300],
                    child: Center(
                        child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 35.0,
                    )),
                  ),
                  Text(
                    'Delivery Fee',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0),
                  ),
                  Text(
                    '15.0L.E',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.grey[700],
                  thickness: 0.8,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 35.0,
                    width: 35.0,
                    color: Colors.orange[300],
                    child: Center(
                        child: Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                      size: 35.0,
                    )),
                  ),
                  Text(
                    'Total Price',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0),
                  ),
                  Text(
                    '75.0L.E',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.grey[700],
                  thickness: 0.8,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
