import 'package:flutter/material.dart';

import 'package:psk_analytics/components/text_field_container.dart';
import 'package:psk_analytics/constants.dart';

class RoundedInputNumberField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const RoundedInputNumberField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        cursorColor: kPrimaryDarkColor,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
