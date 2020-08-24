import 'package:elite_rottu_kaddai_app/Widgets/login_widget.dart';
import 'package:elite_rottu_kaddai_app/Widgets/splash_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[BackgroundImage(), LoginWidget()],
      ),
    );
  }
}
