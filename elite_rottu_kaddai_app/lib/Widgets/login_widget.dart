import 'package:elite_rottu_kaddai_app/Util/helper.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginWidgetState();
}

class LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    "assets/images/icons/login-ico.png",
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              width: 300,
              height: 40,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    "assets/images/icons/email-ico.png",
                  ),
                  hintText: "Enter the User name",
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              width: 300,
              height: 40,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    "assets/images/icons/pwd-ico.png",
                  ),
                  hintText: "Enter the Password",
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ButtonTheme(
              minWidth: 300.0,
              height: 40,
              child: RaisedButton.icon(
                onPressed: () {
                  print('Button Clicked.');
                },
                label: Text(
                  'SIGN IN',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
                icon: Image.asset(
                  "assets/images/icons/signin-ico.png",
                ),
                textColor: Colors.white,
                // splashColor: Colors.red,
                color: HexColor("#ff6c00"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
