import 'package:elite_rottu_kaddai_app/Widgets/table_widget.dart';
import 'package:elite_rottu_kaddai_app/persistence/repository.dart';
import 'package:inject/inject.dart';
import 'package:elite_rottu_kaddai_app/Pages/table_page.dart';
import 'app_injector.inject.dart' as g;

@Injector()
abstract class AppInjector {
  @provide
  TablePage get app;

  @provide
  Repository get repository;

  @provide
  TableWidget get weatherScreen;

  static Future<AppInjector> create() {
    return g.AppInjector$Injector.create();
  }
}
