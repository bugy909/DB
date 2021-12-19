import 'package:flutter/material.dart';

import 'package:psk_analytics/constants.dart';

import 'package:psk_analytics/screens/login/components/background.dart';

import 'package:psk_analytics/components/rounded_input_number_field.dart';

class Body extends StatelessWidget {

  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Text(
              "Shot score from mykicks app",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 40
                )
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputNumberField(
              hintText: "Shot score",
            )
          ],
        ),
      ),
    );
  }
}