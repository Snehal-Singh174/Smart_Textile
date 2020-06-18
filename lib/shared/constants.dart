import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF66CCCC);
const kPrimaryLightColor = Colors.white;


const kTextInputField=InputDecoration(
  hintText: "Email",
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 16.0,
  ),


  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius:BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(color: Colors.red),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(color: Color(0xff66CCCC),width: 2.0),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(color: Color(0xff66CCCC),width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(color: Color(0xffC9C9C9),width: 2.0),
  ),

);
