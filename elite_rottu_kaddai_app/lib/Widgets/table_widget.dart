// import 'package:elite_rottu_kaddai_app/Util/helper.dart';
import 'package:elite_rottu_kaddai_app/Widgets/splash_screen.dart';
import 'package:elite_rottu_kaddai_app/bloc/dining/menu_tables_bloc.dart';
import 'package:elite_rottu_kaddai_app/models/menu_tables.dart';
import 'package:flutter/material.dart';

class TableWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TableWidgetState();
}

class TableWidgetState extends State<TableWidget> {
  List<int> selectedIndexList = new List<int>();
  @override
  Widget build(BuildContext context) {
    menutablesBloc.fetchMenuTables();
    return StreamBuilder(
        stream: menutablesBloc.tables,
        builder: (context, AsyncSnapshot<MenuTableResponse> snapshot) {
          if (snapshot.hasData) {
            return _buildTableScreen(snapshot.data);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        });
  }

  Stack _buildTableScreen(MenuTableResponse data) {
    return Stack(
      children: <Widget>[
        BackgroundImage(),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 1.0,
          ),
          padding: const EdgeInsets.all(10.0),
          itemBuilder: (_context, index) => Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  if (!selectedIndexList.contains(index)) {
                    selectedIndexList.add(index);
                  } else {
                    selectedIndexList.remove(index);
                  }
                  setState(() {});
                },
                child: Container(
                  width: 220,
                  height: 100,
                  decoration: myBoxDecoration(selectedIndexList, index),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/icons/table-ico.png",
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Text(data.tables[index].table_name)
                    ],
                  ),
                ),
              ),
            ],
          ),
          itemCount: data.tables.length,
        ),
        ButtonWidget()
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      color: Colors.orange,
      margin: EdgeInsets.only(top: 600),
      child: RaisedButton.icon(
          elevation: 2,
          onPressed: null,
          icon: Image.asset("assets/images/icons/arrow-ico.png"),
          label: Text(
            "TAKE ORDER",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
    );
  }
}

BoxDecoration myBoxDecoration(List<int> selectedIndexList, index) {
  return BoxDecoration(
    color: selectedIndexList.contains(index) ? Colors.orange : Colors.white,
    border: Border(
      bottom: BorderSide(
        color: Colors.orange,
        width: 3.0,
      ),
    ),
  );
}
// class SelectedTable extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 220,
//         height: 100,
//         decoration: myBoxDecoration(),
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Image.asset(
//                 "assets/images/icons/table-ico.png",
//               ),
//               Padding(
//                 padding: EdgeInsets.all(5),
//               )
//             ]));
//   }
// }
