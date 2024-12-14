import 'package:sad_app/app/modules/auth/cubit/auth_state_freezed.dart';
import 'package:sad_app/common/utils/enums.dart';
import 'package:sad_app/common/utils/validator.dart';
import 'package:sad_app/common/widgets/common_language_selector/language_cubit/language_cubit.dart';
import 'package:sad_app/common/widgets/common_language_selector/language_cubit/language_state.dart';
import 'package:sad_app/common/widgets/common_large_button.dart';
import 'package:sad_app/common/widgets/common_scaffold.dart';
import 'package:sad_app/app/modules/auth/widgets/common_auth_text_field.dart';
import 'package:sad_app/app/modules/auth/widgets/social_auth_button.dart';
import 'package:sad_app/common/app_colors.dart';
import 'package:sad_app/common/assets/image_assets.dart';
import 'package:sad_app/common/assets/svg_assets.dart';
import 'package:sad_app/main.dart';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../cubit/auth_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthCubit _authCubit = Modular.get<AuthCubit>();
  final LanguageCubit _languageCubit = Modular.get<LanguageCubit>();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      bloc: _languageCubit,
      builder: (context, state) {
        return BlocConsumer<AuthCubit, AuthState>(
            bloc: _authCubit,
            listener: (context, state) {
              if (state.error != null) {
                var msg = ErrorsEnum.valueOf(state.error, context);
                showSnackbar(message: msg);
              }
            },
            builder: (context, state) {
              return CommonScaffold(
                hasLanguageSelect: true,
                countryTopPadding: 30,
                countryRightPadding: 20,
                isLoading: state.isLoading,
                resizeToAvoidBottomInset: true,
                child: ListView(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    right: 20.0,
                    left: 20.0,
                    bottom: 20.0,
                  ),
                  children: [
                    Container(
                      width: 130,
                      height: 140,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageAssets.logo),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 40.0,
                          ),
                          CommonAuthTextField(
                            hintText: LocaleKeys.login_email.tr(),
                            controller: _emailController,
                          ),
                          const SizedBox(height: 20.0),
                          CommonAuthTextField(
                            hintText: LocaleKeys.login_password.tr(),
                            isObscureText: true,
                            controller: _passwordController,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: Text(
                            LocaleKeys.login_forgot_password.tr(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Modular.to.pushNamed('forgotPassword');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    CommonLargeButton(
                      gradientColor: AppColors.turquoiseTohalloweenOrange,
                      text: LocaleKeys.login_title.tr(),
                      onPressed: () async {
                        _formKey.currentState?.validate();
                        if (validateEmail(_emailController.text) &&
                            validatePassword(_passwordController.text)) {
                          await _authCubit.loginWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          LocaleKeys.login_no_account.tr(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(width: 10.0),
                        TextButton(
                          onPressed: () {
                            Modular.to.pushNamed('/signUp');
                          },
                          child: Text(
                            LocaleKeys.login_sign_up.tr(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        SocialNetworkButton(
                          icon: SvgAssets.google,
                          label: LocaleKeys.login_google.tr(),
                          onPressed: _loginWithGoogle,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              );
            });
      },
    );
  }

  Future<void> _loginWithGoogle() async {
    await _authCubit.loginWithGoogle();
  }

  void showSnackbar({required String message}) {
    snackbarKey.currentState?.showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
