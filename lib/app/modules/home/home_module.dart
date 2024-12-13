import 'package:sad_app/app/modules/home/cubit/contacts_cubit/contact_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/donate_component_cubit/donate_component_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/filter_cubit/filter_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/professional_cubit/professional_cubit.dart';
import 'package:sad_app/app/modules/home/pages/contact_list_page.dart';
import 'package:sad_app/app/modules/home/pages/home_page.dart';
import 'package:sad_app/app/modules/home/service/contact_service.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sad_app/app/modules/home/service/professional_service.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    //Bind.instance((i) => Modular.get<AuthCubit>()),
    Bind.singleton(
        (i) => ContactCubit(ContactServiceImpl(FirebaseStorage.instance))),
    Bind.singleton((i) => ProfessionalCubit(ProfessionalServiceImpl())),
    Bind.singleton((i) => FilterCubit()),
    Bind.singleton((i) => DonateComponentCubit()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (context, args) => const HomePage()),
    ChildRoute('/contactListPage',
        child: (context, args) => const ContactListPage()),
  ];
}
