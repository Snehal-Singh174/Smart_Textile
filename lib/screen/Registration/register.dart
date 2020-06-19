import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:smarttextileapp/screen/Registration/register_page2.dart';
import 'package:smarttextileapp/screen/Registration/registerbackground.dart';
import 'package:smarttextileapp/shared/size_config.dart';
import 'package:smarttextileapp/shared/constants.dart';
import 'package:smarttextileapp/components/TextFieldContainer.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body:Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: RegistrationBody(),
        ),
    );
  }
}

class RegistrationBody extends StatefulWidget {
  @override
  _RegistrationBodyState createState() => _RegistrationBodyState();
}

class _RegistrationBodyState extends State<RegistrationBody> {

  TextEditingController namecontroller = TextEditingController();
  TextEditingController company_namecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController gst_num_controller = TextEditingController();
  TextEditingController pincodecontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController statecontroller = TextEditingController();
  var result;

  predictGender() async {
//    var pincode = int.parse(name);
//    print(pincode);
    //var url = "https://api.genderize.io/?name=$name";
    var url = "https://pincode.saratchandra.in/api/pincode/500022";
    var res = await http.get(url);
    var body = jsonDecode(res.body);
    print(body);

    result = "Gender: ${body['district']}, Probability: ${body['state_name']}";
    //result = "City: ${body['District']}, State: ${body['State']}";
    print(result);

    setState(() {});
  }


  /*Future<Address> getData() async{
    print("Hello World");
    print("Hello World");
//    var uri =
//    http.get("www.postalpincode.in/api/pincode/${pincodecontroller.text}",);
    final response = await http.get("https://www.postalpincode.in/api/pincode/${pincodecontroller.text}");
    print(response);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Address.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
  Future<Address> futureaddress;
  @override
  void initstate(){
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return RegisterBackground(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.safeBlockVertical*38,),
              Text("Register your details",style: TextStyle(fontSize: 35),),
              SizedBox(height: SizeConfig.safeBlockVertical*10,),
              TextFieldContainer(
                child: TextFormField(
                    controller: namecontroller,
                    decoration: kTextInputField.copyWith(
                      hintText: "Name".toUpperCase()
                      ,prefixIcon: Icon(Icons.accessibility_new),
                    ),
                ),
              ),
              TextFieldContainer(
                child: TextFormField(
                  controller: company_namecontroller,
                    decoration: kTextInputField.copyWith(
                      hintText: "Company Name".toUpperCase()
                        ,prefixIcon: Icon(Icons.account_balance),
                    ),
            ),
              ),
              TextFieldContainer(
                child: TextFormField(
                  controller: addresscontroller,
                  maxLines: 5,
                  decoration: kTextInputField.copyWith(
                    hintText: "Address".toUpperCase()
                    ,prefixIcon: Padding( padding: const EdgeInsets.fromLTRB(0, 0, 0, 80), child: Icon(Icons.home), ),
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextFormField(
                  controller: gst_num_controller,
                  decoration: kTextInputField.copyWith(
                    hintText: "GST-Number".toUpperCase()
                    ,prefixIcon: Icon(Icons.vpn_key),
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextFormField(
                  onChanged: (val){
                    print(pincodecontroller.text.runtimeType);
                    predictGender();
                  },
                  controller: pincodecontroller,
                  decoration: kTextInputField.copyWith(
                    hintText: "Pincode".toUpperCase()
                    ,prefixIcon: Icon(Icons.camera),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                 Container(
                   width: 180,
                   padding: EdgeInsets.only(left: 45,top: 10),
                   child: TextFormField(
                     controller: citycontroller,
                     decoration: kTextInputField.copyWith(
                       hintText: "city".toUpperCase(),
                     ),
                   ),
                 ),
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(left: 35,top: 10),
                    child: TextFormField(
                      controller: statecontroller,
                      decoration: kTextInputField.copyWith(
                        hintText: "State".toUpperCase(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.safeBlockVertical*20,),
              Container(
                width: SizeConfig.safeBlockHorizontal*274,
                height: SizeConfig.safeBlockVertical*47,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                      side: BorderSide(color: kPrimaryColor)),
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage2()));
                  },
                  color: kPrimaryColor,
                  textColor: Colors.black,
                  child: Text("NEXT",
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
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Address {

  final String city;
  final String state;

  Address({this.city, this.state});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['District'],
      state: json['State'],
    );
  }
}
