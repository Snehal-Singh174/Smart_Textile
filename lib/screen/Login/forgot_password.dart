import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smarttextileapp/shared/size_config.dart';
import 'package:smarttextileapp/shared/constants.dart';

class Forgot_Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: RecoverPassword(),
      ),
    );
  }
}
class RecoverPassword extends StatefulWidget {
  @override
  _RecoverPasswordState createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Expanded(
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.safeBlockVertical*81,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFDC453),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*10,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("Please enter your registered email or mobile to reset your password.",
                  style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*55,),
            Padding(
              padding: const EdgeInsets.only(left: 38,right: 38),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email/Mobile number"
                ),
              ),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*60,),
            Container(
              width: SizeConfig.safeBlockHorizontal*274,
              height: SizeConfig.safeBlockVertical*47,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                    side: BorderSide(color: kPrimaryColor)),
                onPressed: () {},
                color: kPrimaryColor,
                textColor: Colors.black,
                child: Text("Recover Password",
                    style: TextStyle(fontSize: 20),),
              ),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*34,),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(-0.3, 0.5),
                  child: SvgPicture.asset("assets/images/Background.svg",
                    width: SizeConfig.safeBlockHorizontal*140,
                  ),
                ),
                Align(
                  alignment: Alignment(0,0) ,
                  child: SvgPicture.asset("assets/images/human_sitting.svg",
                    width: SizeConfig.safeBlockHorizontal*151,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
