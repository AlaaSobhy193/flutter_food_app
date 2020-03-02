import 'package:flutter/material.dart';
import 'package:flutter_food_app/widgets/contact.dart';
import 'package:flutter_food_app/widgets/message.dart';
import 'package:flutter_food_app/widgets/recipes.dart';

class Recipeze extends StatefulWidget {
  const Recipeze({Key key}) : super(key: key);

  @override
  _RecipezeState createState() => _RecipezeState();
}

class _RecipezeState extends State<Recipeze>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
                  child: Text(
                    'My Recipeze',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  )),
              buildTabbar(),
              Expanded(
                child: Container(
                  child: buildTabBarView(),
                ),
              )
            ]),
      ),
    );
  }

  TabBarView buildTabBarView() {
    return TabBarView(
      controller: controller,
      children: <Widget>[
        Recipes(),
        Contact(),
        Messages(),
      ],
    );
  }

  buildTabbar() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.orange[200]),
        child: TabBar(
            controller: controller,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.black),
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Recipes",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Contact",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Message",
                      style: TextStyle(
                          fontFamily: 'NotoSansSC',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
