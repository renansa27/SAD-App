import 'package:sad_app/app/modules/auth/cubit/auth_state_freezed.dart';
import 'package:sad_app/common/widgets/common_large_button.dart';
import 'package:sad_app/common/widgets/common_scaffold.dart';
import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/app/modules/auth/widgets/common_auth_text_field.dart';
import 'package:sad_app/common/app_colors.dart';
import 'package:sad_app/common/app_styles.dart';
import 'package:sad_app/common/widgets/common_app_bar.dart';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ResetPasswordPage extends StatefulWidget {
  final String oobCode;
  const ResetPasswordPage({
    Key? key,
    required this.oobCode,
  }) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  AuthCubit get _authCubit => Modular.get<AuthCubit>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(title: LocaleKeys.reset_password_title.tr()),
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
              LocaleKeys.reset_password_title.tr(),
              style: AppStyles.roboto25BoldWhite(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            CommonAuthTextField(
              hintText: LocaleKeys.reset_password_password.tr(),
              isObscureText: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 20),
            CommonAuthTextField(
              hintText: LocaleKeys.reset_password_confirm_password.tr(),
              isObscureText: true,
              controller: _confirmPasswordController,
            ),
            const SizedBox(height: 30),
            BlocConsumer<AuthCubit, AuthState>(
              bloc: _authCubit,
              listener: (context, state) async {
                if (state.user == null) {
                  await Modular.to.pushReplacementNamed('/login');
                }
              },
              builder: (context, state) {
                return CommonLargeButton(
                  gradientColor: AppColors.turquoiseTohalloweenOrange,
                  text: LocaleKeys.reset_password_create_new_password.tr(),
                  isLoading: state.isLoading,
                  onPressed: _onCreateNewPasswordPessed,
                );
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Future<void> _onCreateNewPasswordPessed() async {
    if (_confirmPasswordController.text == _passwordController.text) {
      await _authCubit.passwordReset(
        oobCode: widget.oobCode,
        newPassword: _passwordController.text,
      );
    }
  }
}
