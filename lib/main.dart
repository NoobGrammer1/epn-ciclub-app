import 'package:flutter/material.dart';
import 'package:renting_houses_app/app.dart';
import 'package:provider/provider.dart';
import 'package:renting_houses_app/providers/general_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GeneralProvider()),
      ],
      child: MyApp(),
    ),
  );
}
