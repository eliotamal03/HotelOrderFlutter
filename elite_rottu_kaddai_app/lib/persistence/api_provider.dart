import 'dart:convert';
import 'package:elite_rottu_kaddai_app/models/menu_tables.dart';
import 'package:http/http.dart' as http;
import "package:elite_rottu_kaddai_app/models/menu_header.dart";

class ApiProvider {
  final _baseUrl = "http://urtechapps-001-site4.itempurl.com/v1/";

  Future<menu_header> fetchMenuHeaders(String url) async {
    final response = await http.get("$_baseUrl" + url);
    print(response.body.toString());

    if (response.statusCode == 200) {
      return menu_header.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load hotel order api');
    }
  }

  Future<MenuTableResponse> fetchMenuTables(String url) async {
    final response = await http.get("$_baseUrl" + url);
    print(response.body.toString());

    if (response.statusCode == 200) {
      final menuTables = MenuTableResponse.fromJson(json.decode(response.body));
      return menuTables;
    } else {
      throw Exception('Failed to load hotel order api');
    }
  }
}
