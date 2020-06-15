import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarttextileapp/components/RoundButton.dart';
import 'package:smarttextileapp/components/RoundedPasswordField.dart';
import 'package:smarttextileapp/components/already_have_an_account.dart';
import 'package:smarttextileapp/screen/Login/loginbackground.dart';
import 'package:smarttextileapp/components/rounded_input_field.dart';
import 'package:smarttextileapp/screen/Login.dart';
import 'package:smarttextileapp/shared/constants.dart';
import 'package:smarttextileapp/shared/size_config.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return LoginBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: SizeConfig.safeBlockVertical*85,),
            SvgPicture.asset("assets/images/Human.svg",height: SizeConfig.safeBlockVertical*110,),
            SizedBox(height: SizeConfig.safeBlockVertical*17,),
            Text("SET YOUR OWN BUSINESS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
            SizedBox(height: SizeConfig.safeBlockVertical*23,),
            RoundedInputField(
                  hintText: "Email",
                  onChanged: (value) {},
                          ),
            RoundedPasswordField(onChanged: (value) {},
            ),
          Row(
            children: <Widget>[
              SizedBox(width: SizeConfig.safeBlockHorizontal*220),
                Align(
                  alignment: Alignment.centerRight,
                  child:Text("Forgot Password?",style: TextStyle(color: kPrimaryColor),),
                ),

            ],
          ),
            SizedBox(height: SizeConfig.safeBlockVertical*5,),
            RoundedButton(text: "LOGIN",
                  press: () {},),

            SizedBox(height: SizeConfig.safeBlockVertical*100,),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
