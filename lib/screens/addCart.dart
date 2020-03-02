import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/orderView.dart';

class AddToCart extends StatefulWidget {
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int counter = 1;
  var price = 60.0;
  void _increament() {
    setState(() {
      counter++;
      price += price;
    });
  }

  void _decreament() {
    setState(() {
      counter--;
      price -= price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: buildStack(context),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Special Instructions',
                style: TextStyle(
                  color: Colors.orange[700],
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
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
                    hintText:
                        'Write down any request.\ne.g: without salt, without peppers, without olive, etc...',
                    hintMaxLines: 3,
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: buildRowCounter(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                '$price',
                style: TextStyle(
                  color: Colors.orange[700],
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderView()));
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
                      'CONFIRM YOUR ORDER',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }

  Stack buildStack(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 240,
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
          top: 150,
          left: MediaQuery.of(context).size.width - 340,
          child: Container(
            width: MediaQuery.of(context).size.width - 50,
            height: MediaQuery.of(context).size.height - 520,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'Beef Burger',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Row buildRowCounter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.minimize,
                color: Colors.orange[700],
              ),
              onPressed: () {
                _decreament();
              },
            ),
          ),
        ),
        Container(
          height: 70.0,
          width: 120,
          child: Center(
            child: Text(
              '$counter',
              style: TextStyle(
                  color: Colors.orange[700],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50.0)),
        ),
        CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.white,
          child: IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.orange[700],
            ),
            onPressed: () {
              _increament();
            },
          ),
        )
      ],
    );
  }
}
