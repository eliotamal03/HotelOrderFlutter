class MenuTableResponse {
  List<menu_table> tables;
  MenuTableResponse({this.tables});
  MenuTableResponse.fromJson(dynamic json) {
    tables = new List<menu_table>();
    json.forEach((v) {
      tables.add(new menu_table.fromJson(v));
    });
  }
}

class menu_table {
  int table_id;
  String table_name;

  menu_table({
    this.table_id,
    this.table_name,
  });

  menu_table.fromJson(Map<String, dynamic> json) {
    table_id = json['table_id'];
    table_name = json['table_name'];
  }
}
