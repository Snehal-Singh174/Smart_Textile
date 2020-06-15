import 'package:flutter/material.dart';
import 'file:///C:/Users/Snehal/AndroidStudioProjects/example/smart_textile_app/lib/shared/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login ? "Not a Member ? " : "Already have an Account ? ",
            style: TextStyle(color: Colors.black,
              fontSize: 18,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              login ? "SIGNUP" : "Sign In",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          )
        ],

    );
  }
}