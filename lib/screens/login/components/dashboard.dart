import 'package:flutter/material.dart';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

// FOR DEBU WHILE LOGIN DEVELOPMENT
class Dashboard extends StatefulWidget {

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  AuthUser _user;

  @override
  void initState() {
    super.initState();

    Amplify.Auth.getCurrentUser().then((user)  {
      setState(() {
        _user = user;
      });
    }).catchError((error) {
      print((error as AuthException).message);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(_user == null)
            Text(
              "Loading..", style: TextStyle(color: Colors.white),
            )
          else ...[
             Text("Hello", style: TextStyle(color: Colors.white),),
             Text(_user.username, style: TextStyle(color: Colors.white),),
             Text(_user.userId, style: TextStyle(color: Colors.white),)
          ]
        ],
        ),
    );
  }
}