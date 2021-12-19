import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:psk_analytics/screens/login/login_screen.dart';
import 'package:psk_analytics/providers/auth.dart';

import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
import 'models/Club.dart';
import 'models/Admin.dart';
import 'models/Coaches.dart';
import 'models/Teamleader.dart';
import 'models/Training.dart';
import 'models/CoachesPlayers.dart';
import 'models/Statistics.dart';
import 'models/Players.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_core/amplify_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, home: LoginScreen(), routes: {}),
    );
  }
}
