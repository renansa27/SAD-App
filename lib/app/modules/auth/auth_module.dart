import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/app/modules/auth/pages/email_validation.dart';
import 'package:sad_app/app/modules/auth/pages/forgot_password_page.dart';
import 'package:sad_app/app/modules/auth/pages/login_page.dart';
import 'package:sad_app/app/modules/auth/pages/reset_password_page.dart';
import 'package:sad_app/app/modules/auth/pages/sign_up_page.dart';
import 'package:sad_app/app/modules/auth/pages/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.instance((i) => Modular.get<AuthCubit>()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const SplashPage(),
    ),
    ChildRoute(
      '/login',
      child: (context, args) => const LoginPage(),
    ),
    ChildRoute(
      '/emailVerifyPage/:oobCode',
      child: (context, args) =>
          EmailValidationPage(oobCode: args.params['oobCode']),
    ),
    ChildRoute(
      '/forgotPassword',
      child: (context, args) => const ForgotPasswordPage(),
    ),
    ChildRoute(
      '/resetPassword/:oobCode',
      child: (context, args) =>
          ResetPasswordPage(oobCode: args.params['oobCode']),
    ),
    ChildRoute(
      '/signUp',
      child: (context, args) => const SignUpPage(),
    ),
  ];
}
