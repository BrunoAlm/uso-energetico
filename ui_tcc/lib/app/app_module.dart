import 'package:flutter_modular/flutter_modular.dart';
import 'package:uitcc/app/loginpage/login_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [ModuleRoute('/', module: LoginModule())];
}
