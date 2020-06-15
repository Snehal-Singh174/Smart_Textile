import 'package:flutter/material.dart';
import 'package:smarttextileapp/screen/Login/loginbody.dart';
import 'package:smarttextileapp/shared/size_config.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: LoginBody(),
    );
  }
}
