import 'package:elite_rottu_kaddai_app/Util/helper.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/Background-Img.jpg"))),
    );
  }
}

class CenterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/Logo.png"))),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#ff6c00"),
      alignment: Alignment.center,
      height: 50,
      child: Text(
        "Elite Rottu Kadai V1.0",
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
    );
  }
}
