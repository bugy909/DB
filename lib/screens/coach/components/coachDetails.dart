import 'package:flutter/material.dart';
import 'package:psk_analytics/constants.dart';

class CoachDetails extends StatelessWidget {

  const CoachDetails({ 
    Key key 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: [
          Image.asset(
            "assets/icons/psk_logo.png",
            height: size.height*0.1,
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            "Coach Name",
            style: TextStyle(color: kPrimaryColor),
          ),
          Text(
            "Coach Information",
            style: TextStyle(color: kPrimaryColor),
          )
        ],
      )
    );
  }
}