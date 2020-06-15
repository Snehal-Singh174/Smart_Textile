import 'package:flutter/material.dart';
import 'package:smarttextileapp/components/TextFieldContainer.dart';
import 'package:smarttextileapp/shared/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        decoration: kTextInputField.copyWith(
          hintText: "Password"
              ,prefixIcon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.visibility),
        )
      ),
    );
  }
}