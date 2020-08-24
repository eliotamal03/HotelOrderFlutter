import 'package:elite_rottu_kaddai_app/Widgets/splash_screen.dart';
import 'package:flutter/material.dart';

class OrderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderWidgetState();
}

class OrderWidgetState extends State<OrderWidget> {
  List<String> textLst1 = ["items1", "items1", "items1", "items1", "items1"];
  List<String> textLst2 = ["items2", "items2", "items2", "items2", "items2"];
  List<String> textLst3 = ["items3", "items3", "items3", "items3", "items3"];
  List<String> textLst4 = ["items4", "items4", "items4", "items4", "items4"];
  List<int> intLst = [];
  List<String> menuLst = [];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundImage(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    "assets/images/icons/search-ico.png",
                  ),
                  hintText: "Search",
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        menuLst = new List<String>();
                        for (var item in textLst1) {
                          menuLst.add(item);
                        }
                      });
                    },
                    child: Container(
                      color: Colors.orange,
                      height: MediaQuery.of(context).size.width * 0.15,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Center(
                        child: Text(
                          "INDIAN",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        menuLst = new List<String>();
                        for (var item in textLst2) {
                          menuLst.add(item);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      height: MediaQuery.of(context).size.width * 0.15,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Center(
                        child: Text(
                          "CHINESE",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        menuLst = new List<String>();
                        for (var item in textLst3) {
                          menuLst.add(item);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      height: MediaQuery.of(context).size.width * 0.15,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Center(
                        child: Text(
                          "CHINESE",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        menuLst = new List<String>();
                        for (var item in textLst4) {
                          menuLst.add(item);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      height: MediaQuery.of(context).size.width * 0.15,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Center(
                        child: Text(
                          "CHINESE",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: menuLst.length,
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
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {});
                                      },
                                      child: Container(
                                        child: Image.asset(
                                            "assets/images/icons/minus-ico.png"),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                    ),
                                    Text(
                                      "0",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {});
                                      },
                                      child: Container(
                                        child: Image.asset(
                                            "assets/images/icons/plus-ico.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            title: Text('${menuLst[index]}',
                                style: TextStyle(color: Colors.white)),
                          );
                        },
                      )),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.450,
                      child: FlatButton(
                        onPressed: () => {print("hi")},
                        child: Text("BACK"),
                        textColor: Colors.white,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.450,
                  child: FlatButton(
                    onPressed: () => {print("hi")},
                    child: Text("NEXT"),
                    textColor: Colors.white,
                    color: Colors.orange,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class RenderIndianMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RenderIndianMenuState();
}

class RenderIndianMenuState extends State<RenderIndianMenu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.yellow,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
