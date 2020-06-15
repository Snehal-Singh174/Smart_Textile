import 'package:flutter/material.dart';
import 'file:///C:/Users/Snehal/AndroidStudioProjects/example/smart_textile_app/lib/shared/constants.dart';


class RoundedButton extends StatelessWidget {

  final String text;
  final Function press;
  final Color color,textcolor;

  const RoundedButton({
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textcolor = Colors.black,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.75,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          color: color,
          onPressed: press,
          child: Text(text, style: TextStyle(color: textcolor),),
        ),
      ),
    );
  }
}

