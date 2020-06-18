import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarttextileapp/screen/Login/forgot_password.dart';
import 'package:smarttextileapp/screen/Login/loginbackground.dart';
import 'package:smarttextileapp/screen/Login/verification.dart';
import 'package:smarttextileapp/screen/Registration/register.dart';
import 'package:smarttextileapp/shared/constants.dart';
import 'package:smarttextileapp/shared/size_config.dart';
import 'package:smarttextileapp/components/TextFieldContainer.dart';


class LoginBody extends StatefulWidget {

  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String password, email;
  @override
  Widget build(BuildContext context) {
    return LoginBackground(
      child: SingleChildScrollView(
        child: new Form(
          key: _key,
          autovalidate: _validate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: SizeConfig.safeBlockVertical*85,),
              SvgPicture.asset("assets/images/Human.svg",height: SizeConfig.safeBlockVertical*110,),
              SizedBox(height: SizeConfig.safeBlockVertical*17,),
              Text("SET YOUR OWN BUSINESS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Segoe'),),
              SizedBox(height: SizeConfig.safeBlockVertical*23,),
              TextFieldContainer(
            child:TextFormField(
                decoration:kTextInputField.copyWith(
                    prefixIcon: Icon(Icons.email),),
                validator: validateEmail,
                onSaved: (String val) {
                  email = val;
                }
              ),
          ),
              TextFieldContainer(
                child: TextFormField(
                    obscureText: true,
                    decoration: kTextInputField.copyWith(
                      hintText: "Password"
                      ,prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  validator: validatePassword,
                    onSaved: (String val) {
                      password = val;
                    }
                ),
              ),
              Row(
              children: <Widget>[
                SizedBox(width: SizeConfig.safeBlockHorizontal*210),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot_Password()),);
                    },
                      child:Text("Forgot Password?",style: TextStyle(color: kPrimaryColor),),
                  ),

              ],
            ),
              Container(
                width: SizeConfig.safeBlockHorizontal*274,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    color: kPrimaryColor,
                    onPressed: _sendToServer,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.safeBlockVertical*100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Not a Member ? ",
                    style: TextStyle(color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                    },
                    child: Text(
                       "SIGNUP" ,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      print("Password $password");
      print("Email $email");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()),);
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }
}

String validateEmail(String value) {
  String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return "Enter your E-mail`  ";
  } else if(!regExp.hasMatch(value)){
    return "Invalid Email";
  }else {
    return null;
  }
}

String validatePassword(String value) {
  String patttern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return "Enter your Password";
  }
  else if (value.length <= 6) {
    return "Password length should be more than 6";
  }
  else if (!regExp.hasMatch(value)) {
    return "Password must be a-z and A-Z";
  }
  return null;
}


