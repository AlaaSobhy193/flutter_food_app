import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  final String title, description, buttonText1, buttonText2;
  final String image;
  CustomDialog({
    @required this.title,
    @required this.description,
    @required this.buttonText1,
    @required this.buttonText2,
    @required this.image,
  });

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
        height: 300,
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
            children: <Widget>[
              Text(
                this.widget.title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16.0),
              CircleAvatar(
                child: Image.asset(widget.image),
                radius: 35.0,
              ),
              SizedBox(height: 35.0),
              Text(widget.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  )),
              SizedBox(height: 24.0),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(widget.buttonText2),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(widget.buttonText1),
                      ),
                    ],
                  ))
            ]));
  }
}
