import 'package:elite_rottu_kaddai_app/Widgets/order_confirmation_widget.dart';
import 'package:flutter/material.dart';

class OrderConfirmationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderConfirmState();
}

class OrderConfirmState extends State<OrderConfirmationPage> {
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
          "ORDER LIST : TABLE 1",
        ),
      ),
      body: OrderConfirmationWidget(),
      bottomNavigationBar: OrderConfirmationButton(),
    );
  }
}
