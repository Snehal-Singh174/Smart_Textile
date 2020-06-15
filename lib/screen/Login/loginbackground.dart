import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarttextileapp/shared/size_config.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;

  const LoginBackground({
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
              Align(
            alignment: Alignment(-1, -1.085),
                child: SvgPicture.asset("assets/images/Top Leaves.svg",
                  width: SizeConfig.safeBlockHorizontal*152,
                ),
              ),
              Align(
                alignment: Alignment(1.7,-1.12),
                child: SvgPicture.asset("assets/images/Corner Plants.svg",
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
