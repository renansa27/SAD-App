import 'package:sad_app/app/modules/auth/auth_module.dart';
import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/app/modules/auth/service/auth_service.dart';
import 'package:sad_app/app/modules/home/cubit/patients_cubit/patient_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/professional_cubit/professional_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/specialties_cubit/specialties_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/teams_cubit/teams_cubit.dart';
import 'package:sad_app/app/modules/home/home_module.dart';
import 'package:sad_app/app/modules/home/service/patients_service.dart';
import 'package:sad_app/app/modules/home/service/professional_service.dart';
import 'package:sad_app/app/modules/home/service/specialties_service.dart';
import 'package:sad_app/app/modules/home/service/teams_service.dart';
/* import 'package:sad_app/app/modules/auth/auth_module.dart';
import 'package:sad_app/app/modules/auth/service/auth_service.dart';
import 'package:sad_app/app/modules/home/home_module.dart'; */
import 'package:sad_app/common/widgets/common_language_selector/language_cubit/language_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  //Modular V6
  @override
  void binds(i) {
    // Dependencias do
    i.addSingleton<LanguageCubit>(LanguageCubit.new);
    // Dependencias do Auth
    i.addSingleton<AuthCubit>(AuthCubit.new);
    i.addSingleton<AuthService>(AuthServiceImpl.new);
    // Dependencias do Teams
    i.addSingleton(TeamsCubit.new);
    i.addSingleton<TeamsService>(TeamsServiceImpl.new);
    // Dependencias do Specialties
    i.addSingleton(SpecialtiesCubit.new);
    i.addSingleton<SpecialtiesService>(SpecialtiesServiceImpl.new);
    // Dependencias do profissionais
    i.addSingleton(ProfessionalCubit.new);
    i.addSingleton<ProfessionalService>(ProfessionalServiceImpl.new);
    // Dependencias do paciente
    i.addSingleton(PatientCubit.new);
    i.addSingleton<PatientService>(PatientServiceImpl.new);
  }

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: AuthModule());
    r.module('/home/', module: HomeModule());
  }

  //Modular V5
  /* @override
  final List<Bind> binds = [
    Bind.singleton((i) => AuthCubit(AuthServiceImpl())),
    Bind.singleton((i) => LanguageCubit()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AuthModule()),
    ModuleRoute('/home/', module: HomeModule()),
  ]; */
}
