import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AddRecipezePage extends StatefulWidget {
  AddRecipezePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AddRecipezePageState createState() => _AddRecipezePageState();
}

class _AddRecipezePageState extends State<AddRecipezePage> {
  var chipName = [
    'BreakFast',
    'Lunch',
    'Maxican',
    'Snacks',
    'Dinner',
    'Soup',
    'SeaFoods',
    'Veg',
    'Non-Veg',
    'Meat'
  ];
  String _isSelected = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        title: Text(
          'Add New Recipeze',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'Recipe Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 20.0, top: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'Select Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 3.0,
                  children: _buildChoiceList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'Photo Gallery',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
                child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(5.0),
                    color: Colors.grey,
                    dashPattern: [2, 2],
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.grey[200]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 50.0, right: 25.0, bottom: 50.0),
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.black,
                            child: Center(
                              child: Text(
                                'Upload Photos',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: _buildGallary(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'Youtube URL',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 20.0, top: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'http://youtube.com/',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 40.0),
                child: Text(
                  'Ingredients',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 20.0, top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Icon(
                              Icons.delete,
                              color: Colors.black,
                              size: 20.0,
                            ),
                          ),
                          hintText: 'Add your Ingredients here',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey[200],
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey[200],
                            width: 1.0,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'Preperation',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 20.0, top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Icon(
                              Icons.delete,
                              color: Colors.black,
                              size: 20.0,
                            ),
                          ),
                          hintText: 'Step for Preperation',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey[200],
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey[200],
                            width: 1.0,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                      ),
                    )
                  ],
                ),
              ),
              buildRow(),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Text(
                  'Post Your Message',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 20.0, top: 15.0),
                child: Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: 'What is the new recipeze about?',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w500),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey[200],
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey[200],
                        width: 1.0,
                      )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, bottom: 25.0),
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      'Submit Recipe',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  'Prepare Time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  'Cooking Time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  'Ready In',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
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
                          color: Colors.white,
                          width: 1.0,
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
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
                          color: Colors.white,
                          width: 1.0,
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
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
                          color: Colors.white,
                          width: 1.0,
                        )),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildGallary() {
    return GridView.extent(
      shrinkWrap: true,
      maxCrossAxisExtent: 120.0,
      mainAxisSpacing: 3.0,
      crossAxisSpacing: 3.0,
      children: _buildGridTiles(9),
    );
  }

  List<Widget> _buildGridTiles(numberOfTiles) {
    List<Container> containers =
        new List<Container>.generate(numberOfTiles, (int index) {
      return new Container(
        child: new Image.asset('assets/background.jpg', fit: BoxFit.cover),
      );
    });
    return containers;
  }

  _buildChoiceList() {
    List<Widget> choices = List();
    chipName.forEach((item) {
      choices.add(Container(
        child: ChoiceChip(
          label: Text(item),
          labelStyle: TextStyle(color: Colors.black),
          selectedColor: Colors.grey[600],
          backgroundColor: Colors.grey[350],
          selected: _isSelected == item,
          onSelected: (selected) {
            setState(() {
              _isSelected = item;
            });
          },
        ),
      ));
    });
    return choices;
  }
}
