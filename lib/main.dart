import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sad_app/app/app_module.dart';
import 'package:sad_app/app/app_widget.dart';
import 'package:sad_app/translations/codegen_loader.g.dart';
import 'firebase_options.dart';
import 'package:logger/logger.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

final logger = Logger(
  printer: PrettyPrinter(),
);
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Get any initial links
  final PendingDynamicLinkData? initialLink =
      await FirebaseDynamicLinks.instance.getInitialLink();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
        Locale('es'),
        Locale('fr'),
        Locale('pt'),
      ],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      child: ModularApp(
          module: AppModule(),
          child: AppWidget(
            initialLink: initialLink,
            snackbarKey: snackbarKey,
          )),
    ),
  );
}
