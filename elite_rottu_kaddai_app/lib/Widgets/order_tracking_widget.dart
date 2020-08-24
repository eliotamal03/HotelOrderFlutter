import 'package:elite_rottu_kaddai_app/Widgets/splash_screen.dart';
import 'package:flutter/material.dart';

class OrderTrackingWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderTrackingWidgetState();
}

class OrderTrackingWidgetState extends State<OrderTrackingWidget> {
  List<String> textLst1 = [
    "Table 1",
    "Table 2",
    "Table 3",
    "Table 4",
    "Table 5"
  ];
  List<String> menuLst = [];
  int count = 0;
  List<int> selectedIndexList = new List<int>();
  List<int> toRemove = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundImage(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: textLst1.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (!selectedIndexList.contains(index)) {
                                selectedIndexList.forEach((e) {
                                  if (e == index) {
                                    toRemove.add(e);
                                  }
                                });
                                selectedIndexList.add(index);
                              } else {
                                selectedIndexList.remove(index);
                              }
                            });
                          },
                          child: Container(
                              child: Card(
                                  color: selectedIndexList.contains(index)
                                      ? Colors.orange
                                      : Colors.white,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    child: Center(
                                        child: Text(textLst1[index].toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0))),
                                  ))));
                    })),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.585,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: textLst1.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.asset(
                              "assets/images/icons/veg-ico.png",
                              height: 25,
                            ),
                            trailing: SizedBox(
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset(index == 1
                                          ? "assets/images/icons/order-pending-ico.png"
                                          : "assets/images/icons/order-completed-ico.png"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          width: 80,
                                          child: Text(
                                            index == 1
                                                ? "Preparing"
                                                : "Completed",
                                          ),
                                          color: index == 1
                                              ? Colors.yellow
                                              : Colors.green,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.30,
                            ),
                            title: Text('${textLst1[index]}',
                                style: TextStyle(color: Colors.white)),
                          );
                        },
                      )),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
          ],
        ),
      ],
    );
  }
}

class OrderCompletionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CompleteOrderBtnState();
}

class CompleteOrderBtnState extends State<OrderCompletionButton> {
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
                icon: Image.asset(
                    "assets/images/icons/order-complted-btn-ico.png"),
                label: Text(
                  "ORDER COMPLETED",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: null,
              )),
        ),
      ],
    );
  }
}
