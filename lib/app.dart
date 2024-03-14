import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renting_houses_app/providers/general_provider.dart';
import 'package:renting_houses_app/providers/login/login.dart';
import 'package:renting_houses_app/screens/onboarding/onboarding.dart';
import 'package:renting_houses_app/screens/signup/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GeneralProvider generalProvider =
        Provider.of<GeneralProvider>(context);
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final layOutWidth = MediaQuery.of(context).size.width;
      final layOutHeight = MediaQuery.of(context).size.height;
      generalProvider.setLayoutSpaces(layOutWidth, layOutHeight);
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/signup': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
      },
      home: generalProvider.layoutSpaces == null
          ? Container()
          : OnboardingScreen(),
    );
  }
}
