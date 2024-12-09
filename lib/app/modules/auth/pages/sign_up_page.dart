import 'package:sad_app/app/modules/auth/cubit/auth_state_freezed.dart';
import 'package:sad_app/common/widgets/common_large_button.dart';
import 'package:sad_app/common/widgets/common_scaffold.dart';
import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/app/modules/auth/widgets/common_auth_text_field.dart';
import 'package:sad_app/app/modules/auth/widgets/social_auth_button.dart';
import 'package:sad_app/common/app_colors.dart';
import 'package:sad_app/common/app_styles.dart';
import 'package:sad_app/common/assets/svg_assets.dart';
import 'package:sad_app/common/widgets/common_app_bar.dart';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  AuthCubit get _authCubit => Modular.get<AuthCubit>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(title: LocaleKeys.sign_up_title.tr()),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: const EdgeInsets.only(
            top: 20.0,
            right: 20.0,
            left: 20.0,
            bottom: 20.0,
          ),
          children: <Widget>[
            Text(
              LocaleKeys.sign_up_title.tr(),
              style: AppStyles.roboto25BoldWhite(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            CommonAuthTextField(
              hintText: LocaleKeys.sign_up_email.tr(),
              controller: _emailController,
            ),
            const SizedBox(height: 20),
            CommonAuthTextField(
              hintText: LocaleKeys.sign_up_password.tr(),
              isObscureText: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 20),
            CommonAuthTextField(
              hintText: LocaleKeys.sign_up_confirm_password.tr(),
              isObscureText: true,
              controller: _confirmPasswordController,
            ),
            const SizedBox(height: 30),
            BlocBuilder<AuthCubit, AuthState>(
              bloc: _authCubit,
              builder: (context, state) {
                return CommonLargeButton(
                  gradientColor: AppColors.turquoiseTohalloweenOrange,
                  text: LocaleKeys.sign_up_create_account.tr(),
                  isLoading: state.isLoading,
                  onPressed: _onSignUpPessed,
                );
              },
            ),
            const SizedBox(height: 30.0),
            Text(
              LocaleKeys.sign_up_or.tr(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                SocialNetworkButton(
                  icon: SvgAssets.google,
                  label: LocaleKeys.sign_up_google.tr(),
                  onPressed: _signUpWithGoogle,
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Future<void> _onSignUpPessed() async {
    if (_confirmPasswordController.text == _passwordController.text) {
      await _authCubit.signUpWithEmail(
        email: _emailController.text,
        password: _passwordController.text,
      );
    }
  }

  Future<void> _signUpWithGoogle() async {
    await _authCubit.loginWithGoogle();
  }
}
