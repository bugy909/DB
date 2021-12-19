import 'package:flutter/material.dart';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';

import 'package:psk_analytics/amplifyconfiguration.dart';

import 'package:psk_analytics/components/rounded_button.dart';
import 'package:psk_analytics/components/rounded_login_field.dart';
import 'package:psk_analytics/components/rounded_password_field.dart';
import 'package:psk_analytics/screens/login/components/dashboard.dart';

/// A field for email and password input with login button
class AuthFields extends StatefulWidget {

  const AuthFields({ 
    Key key
  }) : super(key: key);

  @override
  _AuthFieldsState createState() => _AuthFieldsState();
}

class _AuthFieldsState extends State<AuthFields> {
  bool _amplifyConfiguered = false;
  bool _userSignedIn = false;
  Map<String,String> _authData = {
    "email" : "",
    "password" : ""
  };

  @override
  void initState(){
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    try{
      Amplify.addPlugins([AmplifyAuthCognito(),AmplifyAnalyticsPinpoint()]);
      await Amplify.configure(amplifyconfig);

      final CognitoAuthSession res = await Amplify.Auth.fetchAuthSession();
      setState(() {
        print("Amplify Configured");
        if(res.isSignedIn){
          _userSignedIn = true;
        }
        _amplifyConfiguered = true;
      });

    } on AmplifyAlreadyConfiguredException catch(e) {
      print("Amplify already configured.");
    }
  }

  Future<void> _onLogin() async {
    try {
      final SignInResult result = await Amplify.Auth.signIn(
        username: _authData["email"],
        password: _authData["password"],
      );

      setState(() {
        _userSignedIn = result.isSignedIn;
      });

    } on AuthException catch(e) {
      print("${e.message} - ${e.recoverySuggestion}");
      if(e.message.contains("already a user signed in")){
        await Amplify.Auth.signOut();
        print("Previous user signed out");
      }
    }
  }

  Future<void> _onLogout() async {
    try {
      await Amplify.Auth.signOut();
      setState(() {
        _userSignedIn = false;
      });

    } catch(e){
      print("${e.message} - ${e.recoverySuggestion}");
    }
  }

  Future<void> _onSignup() async {
    try {
      await Amplify.Auth.signUp(
        username: _authData["email"],
        password: _authData["password"],
        options: CognitoSignUpOptions(userAttributes: {
          'email': _authData["email"],
        }),
      );

    } on AuthException catch (e) {
      print('${e.message} - ${e.recoverySuggestion}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>
      [
        RoundedLoginField(
          hintText: "Your Email",
          onChanged: (String email) => {_authData["email"] = email},
        ),
        RoundedPasswordField(
          onChanged: (String password) => {_authData["password"] = password},
        ),
        RoundedButton(
          text: "LOGIN",
          press: _onLogin,
        ),
        // FOR DEBUG 
        if(_amplifyConfiguered && _userSignedIn) 
          Dashboard()
      ]
    );
  }
}