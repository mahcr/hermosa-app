import 'package:flutter/material.dart';
import 'package:hermosa_home/screens/auth_screen.dart';

void main() {
  runApp(HermosaApp());
}

class HermosaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hermosa',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthPage(
          title: 'Hermosa Home',
        ));
  }
}
