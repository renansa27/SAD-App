import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/app/modules/auth/auth_module.dart';
import 'package:sad_app/app/modules/auth/service/auth_service.dart';
import 'package:sad_app/app/modules/home/home_module.dart';
import 'package:sad_app/common/widgets/common_language_selector/language_cubit/language_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AuthCubit(AuthServiceImpl())),
    Bind.singleton((i) => LanguageCubit()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AuthModule()),
    ModuleRoute('/home/', module: HomeModule()),
  ];
}
