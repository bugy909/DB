import 'package:flutter/material.dart';
import 'package:psk_analytics/constants.dart';

import 'package:psk_analytics/screens/coach/components/background.dart';

class Body extends StatelessWidget {

  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          // TODO add information to coach screen
        ),
      );
  }
}
