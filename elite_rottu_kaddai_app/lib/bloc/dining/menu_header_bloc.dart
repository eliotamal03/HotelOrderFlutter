import 'package:elite_rottu_kaddai_app/models/menu_tables.dart';
import 'package:elite_rottu_kaddai_app/persistence/repository.dart';
import 'package:rxdart/rxdart.dart';

class MenuHeaderBloc {
  Repository _repository;
  MenuHeaderBloc(this._repository);
  final _weatherFetcher = PublishSubject<MenuTableResponse>();

  Observable<MenuTableResponse> get weather => _weatherFetcher.stream;
  fetchLondonWeather() async {
    MenuTableResponse weatherResponse = await _repository.fetchMenuTables();
    _weatherFetcher.sink.add(weatherResponse);
  }

  dispose() {
    _weatherFetcher.close();
  }
}
