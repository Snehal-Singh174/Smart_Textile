import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarttextileapp/shared/size_config.dart';
import 'package:smarttextileapp/shared/constants.dart';
import 'package:smarttextileapp/screen/Login/loginbackground.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: OTPScreen(),

      ),
    );
  }
}
class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List otp = [];
  List<String> currentPin = ["", "", "", "", "", ""];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pintwoController = TextEditingController();
  TextEditingController pinthreeController = TextEditingController();
  TextEditingController pinfourController = TextEditingController();
  TextEditingController pinfiveController = TextEditingController();
  TextEditingController pinsixController = TextEditingController();

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.transparent),
  );
  int pinIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SvgPicture.asset("assets/images/undraw_secure_login_pdn4.svg"),
          SizedBox(height: SizeConfig.safeBlockVertical * 10,),
          Row(
            children: <Widget>[
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 28,
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: 'Enter 6 Digit code sent to you at ',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    children: <TextSpan>[
                      TextSpan(
                        text: '+9199######89',
                        style: TextStyle(
                          color: Color(0xff00747A),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        otp.length <= 0 ? '' : otp[0],
                        textScaleFactor: 2,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        otp.length <= 1 ? "" : otp[1],
                        textScaleFactor: 2,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        otp.length <= 2 ? "" : otp[2],
                        textScaleFactor: 2,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        otp.length <= 3 ? "" : otp[3],
                        textScaleFactor: 2,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        otp.length <= 4 ? "" : otp[4],
                        textScaleFactor: 2,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        otp.length <= 5 ? "" : otp[5],
                        textScaleFactor: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.safeBlockVertical * 10,),
          Text("Resend code", style: TextStyle(color: Colors.red),),
          SizedBox(height: SizeConfig.safeBlockVertical * 5,),
          Expanded(
            child: Container(
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
                  color: Color(0xFF00B6C7),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: SizeConfig.safeBlockVertical * 10,),
                    Text("VERIFY", style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical * 10),
                            height: SizeConfig.screenHeight,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(80)),
                              color: Colors.white,
                            ),
                            child: buildNumberPad2(),
                          ),
                        ],
                      ),
                    ),

                  ],
                )
            ),
          ),
        ],
      ),
    );
  }

  buildNumberPad2() {
    return Expanded(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OtpButton(
                  text: "1",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("1");
                        },
                      );
                    }
                  },
                ),
                OtpButton(
                  text: "2",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("2");
                        },
                      );
                    }
                  },
                ),
                OtpButton(
                  text: "3",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("3");
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OtpButton(
                  text: "4",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("4");
                        },
                      );
                    }
                  },
                ),
                OtpButton(
                  text: "5",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("5");
                        },
                      );
                    }
                  },
                ),
                OtpButton(
                  text: "6",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("6");
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OtpButton(
                  text: "7",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("7");
                        },
                      );
                    }
                  },
                ),
                OtpButton(
                  text: "8",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("8");
                        },
                      );
                    }
                  },
                ),
                OtpButton(
                  text: "9",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("9");
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OtpButton(
                  text: "",
                  onTap: () {},
                ),
                OtpButton(
                  text: "0",
                  onTap: () {
                    if (otp.length <= 5) {
                      setState(
                            () {
                          otp.add("0");
                        },
                      );
                    }
                  },
                ),
                FlatButton(
                    onPressed: () {
                      if (otp.length >= 0) {
                        setState(() {
                          otp.removeLast();
                        });
                      }
                    },
                    child: Icon(Icons.backspace))
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: new Container(
                    margin: EdgeInsets.only(left: 85, right: 85),
                    child: Divider(
                      color: Colors.grey,
                      endIndent: 50,
                      indent: 50,
                      thickness: 2,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OtpButton extends StatelessWidget {
  final Function onTap;
  final text;
  OtpButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      child: Text(
        text,
        textScaleFactor: 3.0,
      ),
    );
  }
}


