import 'package:flutter/material.dart';
import 'package:psk_analytics/constants.dart';

import 'package:psk_analytics/screens/coach/components/body.dart';
import 'package:psk_analytics/screens/coach/components/sidebar.dart';

/// TODO
class CoachScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryDarkColor),
        backgroundColor: kPrimaryColor,
        title: Text(
          "Coach Screen",
          style: TextStyle(color: kPrimaryDarkColor)
          ),
      ),
      drawer: Sidebar(),
      body: Body(),
    );
  }
}
