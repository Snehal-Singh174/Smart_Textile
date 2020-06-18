import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarttextileapp/shared/size_config.dart';

class RegisterBackground extends StatelessWidget {
  final Widget child;

  const RegisterBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset("assets/images/bottom_right_register.svg",
                  width: SizeConfig.safeBlockHorizontal*220,
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
