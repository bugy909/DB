import 'package:flutter/material.dart';

import 'package:psk_analytics/components/text_field_container.dart';
import 'package:psk_analytics/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isPasswordHidden = true;

  void _togglePasswordVisibility(){
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: _isPasswordHidden,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryDarkColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryDarkColor,
          ),
          suffixIcon: InkWell(
            onTap: _togglePasswordVisibility,
            child: Icon(
              Icons.visibility,
              color: kPrimaryDarkColor,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
