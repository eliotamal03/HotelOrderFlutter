import 'package:elite_rottu_kaddai_app/Widgets/order_widget.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderState();
}

class OrderState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: Image.asset("assets/images/icons/nav-ico.png"),
        actions: <Widget>[
          new IconButton(
            icon: Image.asset("assets/images/icons/user-ico.png"),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "ORDER : TABLE 1",
        ),
      ),
      body: OrderWidget(),
    );
  }
}
