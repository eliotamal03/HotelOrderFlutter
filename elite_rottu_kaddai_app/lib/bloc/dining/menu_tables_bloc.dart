import 'package:elite_rottu_kaddai_app/models/menu_tables.dart';
import 'package:elite_rottu_kaddai_app/persistence/repository.dart';
import 'package:rxdart/rxdart.dart';

class MenuTablesBloc {
  Repository _repository = Repository();

  final _menu_tables_fetcher = PublishSubject<MenuTableResponse>();

  Observable<MenuTableResponse> get tables => _menu_tables_fetcher.stream;

  fetchMenuTables() async {
    MenuTableResponse menuTables = await _repository.fetchMenuTables();
    _menu_tables_fetcher.sink.add(menuTables);
  }

  dispose() {
    _menu_tables_fetcher.close();
  }
}

final menutablesBloc = MenuTablesBloc();
