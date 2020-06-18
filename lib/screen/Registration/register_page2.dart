import 'package:flutter/material.dart';
import 'package:smarttextileapp/screen/Registration/registerbackground.dart';
import 'package:smarttextileapp/shared/size_config.dart';
import 'package:smarttextileapp/shared/constants.dart';
import 'package:smarttextileapp/components/TextFieldContainer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: NextPage(),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  TextEditingController phonecontroller = TextEditingController();
  TextEditingController websitecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return RegisterBackground(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.safeBlockVertical*58,),
              Text("Register your details",style: TextStyle(fontSize: 35),),
              SizedBox(height: SizeConfig.safeBlockVertical*10,),
              TextFieldContainer(
                child: TextFormField(
                  controller: phonecontroller,
                  decoration: kTextInputField.copyWith(
                    hintText: "ph-number".toUpperCase()
                    ,prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.safeBlockVertical*5,),
              TextFieldContainer(
                child: TextFormField(
                  controller: websitecontroller,
                  decoration: kTextInputField.copyWith(
                    hintText: "website".toUpperCase()
                    ,prefixIcon: Icon(Icons.public),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.safeBlockVertical*5,),
              TextFieldContainer(
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: kTextInputField.copyWith(
                    hintText: "email".toUpperCase()
                    ,prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.safeBlockVertical*5,),
              TextFieldContainer(
                child: TextFormField(
                  controller: passwordcontroller,
                  decoration: kTextInputField.copyWith(
                    hintText: "password".toUpperCase()
                    ,prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.safeBlockVertical*20,),
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
                  child: Text("SUBMIT",
                    style: TextStyle(fontSize: 20),),
                ),
              ),
              SizedBox(height: SizeConfig.safeBlockVertical*24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "You are a Member ? ",
                    style: TextStyle(color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      "SIGNIN" ,
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
}