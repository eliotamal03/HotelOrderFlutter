import 'package:elite_rottu_kaddai_app/Widgets/splash_screen.dart';
import 'package:flutter/material.dart';

class OrderConfirmationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderConfirmationState();
}

class OrderConfirmationState extends State<OrderConfirmationWidget> {
  List<String> textLst1 = ["items1", "items1", "items1", "items1", "items1"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.all(15.0),
          child: Scaffold(
            appBar: AppBar(
              title: Text("ADDED ITEMS:"),
              backgroundColor: Colors.orange,
              actions: <Widget>[
                PopupMenuButton(
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'add',
                      child: Text('Add'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'edit',
                      child: Text('Edit'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'track',
                      child: Text('Tracking'),
                    ),
                  ],
                  onSelected: (value) => {print(value)},
                ),
              ],
            ),
            body: Stack(
              children: <Widget>[
                BackgroundImage(),
                Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.asset(
                            "assets/images/icons/nov-veg-ico.png",
                            height: 25,
                          ),
                          trailing: SizedBox(
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(30),
                                  ),
                                  Text(
                                    "+0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.25,
                          ),
                          title: Text('${textLst1[index]}',
                              style: TextStyle(color: Colors.white)),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.white,
                      ),
                      itemCount: textLst1.length,
                      // itemBuilder: (context, index) => Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: Center(child: Text("Index $index")),
                      // ),
                    ))
              ],
            ),
          )),
    );
  }
}

class OrderConfirmationButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ConfirmOrderBtnState();
}

class ConfirmOrderBtnState extends State<OrderConfirmationButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.orange,
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width,
              child: FlatButton.icon(
                icon: Image.asset("assets/images/icons/arrow-ico.png"),
                label: Text(
                  "CONFIRM ORDER",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: null,
              )),
        ),
      ],
    );
  }
}
