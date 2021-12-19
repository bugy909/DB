import 'package:flutter/material.dart';

import 'package:psk_analytics/amplifyconfiguration.dart';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';

// TODO:
// All functions implemented
// auth_fields.dart should call ,e.g., Providor.of<Auth>(context).signUp 
// Can if providor.of call be called inside initstate ?
// How to detect changes to change screen or show dashboard ? (maybe notifylisteners())
class Auth with ChangeNotifier {
  bool amplifyConfiguered = false;
  bool userSignedIn = false;

  Future<void> configure() async{
    try{
      Amplify.addPlugins([AmplifyAuthCognito(),AmplifyAnalyticsPinpoint()]);
      await Amplify.configure(amplifyconfig);

      final CognitoAuthSession res = await Amplify.Auth.fetchAuthSession();
    
      print("Amplify Configured");
      if(res.isSignedIn){
        userSignedIn = true;
      }
      amplifyConfiguered = true;

    } on AmplifyAlreadyConfiguredException catch(e) {
      print("Amplify already configured.");
    }
  }

  Future<void> signUp(String email, String password) async {
    try {
      await Amplify.Auth.signUp(
        username: email,
        password: password,
        options: CognitoSignUpOptions(userAttributes: {
          'email': email,
        }),
      );

    } on AuthException catch (e) {
      print('${e.message} - ${e.recoverySuggestion}');
    }
  }

  Future<void> login(String email, String password) async {
    try {
      final SignInResult result = await Amplify.Auth.signIn(
        username: email,
        password: password,
      );
      userSignedIn = result.isSignedIn;

    } on AuthException catch(e) {
      print("${e.message} - ${e.recoverySuggestion}");
      if(e.message.contains("already a user signed in")){
        await Amplify.Auth.signOut();
        print("Previous user signed out");
      }
    }
  }

  Future<void> logout() async {
    try {
      await Amplify.Auth.signOut();
      userSignedIn = false;

    } catch(e){
      print("${e.message} - ${e.recoverySuggestion}");
    }
  }
}