class menu_header {
  int menuHeaderId;
  String menuHeaderName;

  menu_header({this.menuHeaderId, this.menuHeaderName});

  menu_header.fromJson(Map<String, dynamic> json) {
    menuHeaderId = json['menu_header_id'];
    menuHeaderName = json['menu_header_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['menu_header_id'] = this.menuHeaderId;
    data['menu_header_name'] = this.menuHeaderName;
    return data;
  }
}
