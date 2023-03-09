import 'package:flutter_modular/flutter_modular.dart';
import 'package:uitcc/app/home_page/home_page_screen.dart';
import 'package:uitcc/app/profile_page/profile_module.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ModuleRoute('/profile', module: ProfileModule())
      ];
}
