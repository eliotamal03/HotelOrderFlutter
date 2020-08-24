// import 'package:elite_rottu_kaddai_app/Util/helper.dart';
import 'package:elite_rottu_kaddai_app/Widgets/table_widget.dart';
import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TableState();
}

class TableState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "TABLE RESERVATION",
        ),
      ),
      body: TableWidget(),
    );
  }
}
