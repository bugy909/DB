import 'package:flutter/material.dart';

import 'package:psk_analytics/screens/login/components/background.dart';
import 'package:psk_analytics/screens/login/components/auth_fields.dart';

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
            Image.asset(
              "assets/icons/psk_logo.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            AuthFields(),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
