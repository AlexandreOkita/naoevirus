import 'package:flutter_modular/flutter_modular.dart';
import 'package:naoevirus/app/home/home_page.dart';


class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => HomePage()),
  ];
}