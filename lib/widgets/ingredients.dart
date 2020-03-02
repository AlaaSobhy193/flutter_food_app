import 'package:flutter/material.dart';
import 'package:flutter_food_app/widgets/homeRecipesList.dart';
import 'package:flutter_food_app/widgets/showImage.dart';

class Ingredients extends StatefulWidget {
  const Ingredients({Key key}) : super(key: key);

  @override
  _IngredientsState createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  List<Image> gallery = [
    Image.asset('assets/background.jpg'),
    Image.asset('assets/burger.png'),
    Image.asset('assets/seafood.jpeg'),
    Image.asset('assets/meat.png'),
    Image.asset('assets/fish.png'),
    Image.asset('assets/burger.jpg'),
    Image.asset('assets/chicken.png'),
    Image.asset('assets/background.jpg'),
    Image.asset('assets/burger.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildStepsContainer(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 30.0),
            child: Text(
              'Photo Gallary',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: _buildGallary(context),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 30.0),
            child: Text(
              'Food Notes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15.0, right: 15.0),
            child: Text(
              'Yellow cake mix anf peaches canned in heavy syrup and the primary components in this simple dump cake recipe.',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontFamily: 'NotoSansSC',
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 30.0),
            child: Text(
              'Nutrition Facts Notes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10.0, right: 15.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 18.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '11/2 cups fresh blackberries',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontFamily: 'NotoSansSC',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 18.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '11/2 cups fresh blackberries',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontFamily: 'NotoSansSC',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 18.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '11/2 cups fresh blackberries',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontFamily: 'NotoSansSC',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 40.0),
            child: Text(
              'Similar Recipes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            height: 225,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  //  final Product products = product[index];
                  return Container(
                      padding: EdgeInsets.only(
                        top: 15.0,
                        bottom: 20.0,
                        left: 10.0,
                      ),
                      child: ResturantsList());
                }),
          ),
        ],
      ),
    ));
  }

  Container buildStepsContainer() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 10.0),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.control_point,
                      size: 18.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '11/2 cups fresh blackberries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  _buildGallary(BuildContext context) {
    return GridView.extent(
      shrinkWrap: true,
      maxCrossAxisExtent: 120.0,
      mainAxisSpacing: 3.0,
      crossAxisSpacing: 3.0,
      children: _buildGridTiles(9, context),
    );
  }

  List<Widget> _buildGridTiles(numberOfTiles, BuildContext context) {
    List<Container> containers =
        new List<Container>.generate(numberOfTiles, (int index) {
      return new Container(
          child: GestureDetector(
              onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => ShowImage(
                      btnClose: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      btnPrevious: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      btnNext: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      index: index,
                    ),
                  ),
              child: (gallery[index])));
    });
    return containers;
  }
}
