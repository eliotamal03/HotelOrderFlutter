import 'package:elite_rottu_kaddai_app/Widgets/order_tracking_widget.dart';
import 'package:flutter/material.dart';

class OrderTrackingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderTrackingState();
}

class OrderTrackingState extends State<OrderTrackingPage> {
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
          "TRACKING ORDERS",
        ),
      ),
      body: OrderTrackingWidget(),
      bottomNavigationBar: OrderCompletionButton(),
    );
  }
}
