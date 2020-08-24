import 'package:elite_rottu_kaddai_app/models/menu_header.dart';
import 'package:elite_rottu_kaddai_app/models/menu_tables.dart';
import 'api_provider.dart';

class Repository {
  ApiProvider appApiProvider = ApiProvider();
  String url = "dining/tables";
  Future<menu_header> fetchMenuHeaders() =>
      appApiProvider.fetchMenuHeaders(url);

  Future<MenuTableResponse> fetchMenuTables() =>
      appApiProvider.fetchMenuTables(url);
}
