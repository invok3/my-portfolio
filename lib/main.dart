import 'package:flutter/material.dart';

import 'View/portfilio_screen.dart';
import 'View/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool _isFirstRun = true;

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _isFirstRun ? SplashScreen() : PortfilioScreen(),
    );
  }
}
