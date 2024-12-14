import 'dart:developer';

import 'package:sad_app/common/app_theme.dart';
import 'package:sad_app/common/consts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState>? snackbarKey;
  final PendingDynamicLinkData? initialLink;
  const AppWidget(
      {super.key, required this.snackbarKey, required this.initialLink});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await initDynamicLinks(context);
    });
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return MaterialApp.router(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: flutterAppName,
      scaffoldMessengerKey: snackbarKey,
      theme: AppTheme.defaultTheme,
      //Modular V6
      routerConfig: Modular.routerConfig,
      // Modular v5
      /* routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate, */
    );
  }

  Future<void> initDynamicLinks(BuildContext context) async {
    if (!kIsWeb) {
      FirebaseDynamicLinks.instance.onLink.listen((initialLink) async {
        final deepLink = initialLink.link;
        final mode = deepLink.queryParameters['mode'];
        final oobCode = deepLink.queryParameters['oobCode'];
        if (oobCode != null && mode == 'resetPassword') {
          await Modular.to.pushReplacementNamed('/resetPassword/$oobCode');
        } else if (oobCode != null && mode == 'verifyEmail') {
          await Modular.to.pushReplacementNamed('/emailVerifyPage/$oobCode');
        }
      }).onError((e) {
        log(e.message ?? 'Error on deep-link');
      });
    }
  }
}
