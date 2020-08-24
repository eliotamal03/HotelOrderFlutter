import 'dart:async';
import 'package:elite_rottu_kaddai_app/Widgets/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => print("test"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            BackgroundImage(),
            Container(
              child: Center(
                child: CenterImage(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: FooterSection());
  }
}
