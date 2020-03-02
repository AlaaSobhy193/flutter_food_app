import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/addRecipeze.dart';
import 'package:flutter_food_app/widgets/recipesList.dart';

class MyRecipezePage extends StatefulWidget {
  MyRecipezePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyRecipezePageState createState() => _MyRecipezePageState();
}

class _MyRecipezePageState extends State<MyRecipezePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddRecipezePage()));
              },
            )
          ],
          title: Text(
            ' Recipes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: Container(
                height: 220.0,
                color: Colors.orange[300],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    //  final Product products = product[index];
                    return Container(
                        padding: EdgeInsets.only(
                          top: 20.0,
                          bottom: 20.0,
                          left: 20.0,
                        ),
                        child: RecipesList());
                  }),
            ),
          ],
        ));
  }
}
