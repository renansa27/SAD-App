import 'package:firebase_storage/firebase_storage.dart';
import 'package:sad_app/app/modules/home/cubit/contacts_cubit/contact_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/donate_component_cubit/donate_component_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/filter_cubit/filter_cubit.dart';
import 'package:sad_app/app/modules/home/pages/contact_list_page.dart';
import 'package:sad_app/app/modules/home/pages/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sad_app/app/modules/home/service/contact_service.dart';

class HomeModule extends Module {
  //Modular V6
  @override
  void binds(Injector i) {
    i.addSingleton<DonateComponentCubit>(DonateComponentCubit.new);
    i.addSingleton<ContactService>(
        () => ContactServiceImpl(FirebaseStorage.instance));
    i.addSingleton<ContactCubit>(() => ContactCubit(i.get<ContactService>()));
    i.addSingleton<FilterCubit>(FilterCubit.new);
  }

  //Modular V5
  /* @override
  final List<Bind> binds = [
    Bind.singleton((i) => ContactCubit(
          ContactServiceImpl(FirebaseStorage.instance),
        )),
    Bind.singleton((i) => FilterCubit()),
    Bind.singleton((i) => DonateComponentCubit()),
  ]; */

  //Modular V6
  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => HomePage());
    r.child('/contactListPage', child: (context) => ContactListPage());
  }

  //Mogular V5
  /* @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (context, args) => const HomePage()),
    ChildRoute('/contactListPage',
        child: (context, args) => const ContactListPage()),
  ]; */
}
