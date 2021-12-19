import 'package:flutter/material.dart';
import 'package:psk_analytics/constants.dart';

import 'package:psk_analytics/screens/coach/components/coachDetails.dart';

class Sidebar extends StatelessWidget {
  
  const Sidebar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: kPrimaryDarkColor,
            ),
            child: CoachDetails(),
          ),
          ListTile(
            leading: Icon(Icons.directions_walk),
            title: Text('Exercises'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
