import 'package:flutter_modular/flutter_modular.dart';
import 'package:uitcc/app/homepage/home_page_screen.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
