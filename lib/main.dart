import 'package:flutter/material.dart';
import 'package:flutter_plus/flutter_plus.dart';
import 'package:nuclone/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FlutterAppPlus(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      navigatorKey: navigatorPlus.key,
      home: NuHomeScreen(
        userName: 'Carlos',
      ),
    );
  }
}