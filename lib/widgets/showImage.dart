import 'package:flutter/material.dart';

class ShowImage extends StatefulWidget {
  final Widget btnNext, btnPrevious, btnClose;
  final int index;
  ShowImage({
    @required this.btnNext,
    @required this.btnPrevious,
    @required this.btnClose,
    @required this.index,
  });

  @override
  _ShowImageState createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
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
  int counter;
  @override
  void initState() {
    super.initState();
    counter = this.widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Dialog(
        elevation: 5.0,
        backgroundColor: Colors.transparent,
        child: dialogContent(context),
      ),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              )
            ]),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 230.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: this.widget.btnClose,
                        onPressed: () => Navigator.pop(context)),
                    Text(
                      'CLOSE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: gallery[counter],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            setState(() {
                              counter = counter - 1;
                            });
                          },
                          icon: this.widget.btnNext,
                        ),
                        Text(
                          'PREVIOUS',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'NEXT',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              counter = counter + 1;
                            });
                          },
                          icon: this.widget.btnPrevious,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ]));
  }
}
