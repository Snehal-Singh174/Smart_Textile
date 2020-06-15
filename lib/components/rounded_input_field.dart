import 'package:flutter/material.dart';
import 'package:smarttextileapp/components/TextFieldContainer.dart';
import 'package:smarttextileapp/shared/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration:kTextInputField
      ),
    );
  }
}
