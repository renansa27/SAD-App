import 'package:sad_app/app/modules/auth/cubit/auth_state_freezed.dart';
import 'package:sad_app/common/widgets/common_large_button.dart';
import 'package:sad_app/common/widgets/common_scaffold.dart';
import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/app/modules/auth/widgets/common_auth_text_field.dart';
import 'package:sad_app/common/app_styles.dart';
import 'package:sad_app/common/widgets/common_app_bar.dart';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ForgotPasswordPage extends StatefulWidget {
  final VoidCallback? onLeadingPressed;
  const ForgotPasswordPage({
    Key? key,
    this.onLeadingPressed,
  }) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  AuthCubit get _authCubit => Modular.get<AuthCubit>();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(title: LocaleKeys.forgot_password_title.tr()),
      child: ListView(
        padding: const EdgeInsets.only(
          top: 20.0,
          right: 20.0,
          left: 20.0,
          bottom: 20.0,
        ),
        children: [
          Text(
            LocaleKeys.forgot_password_title.tr(),
            style: AppStyles.roboto25BoldWhite(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Text(
            LocaleKeys.forgot_password_enter_email_text.tr(),
            style: AppStyles.roboto15NormalWhite(context),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 20),
          CommonAuthTextField(
              hintText: LocaleKeys.forgot_password_email.tr(),
              controller: _emailController),
          const SizedBox(height: 30),
          BlocBuilder<AuthCubit, AuthState>(
            bloc: _authCubit,
            builder: (context, state) {
              return CommonLargeButton(
                isLoading: state.isLoading,
                text: LocaleKeys.forgot_password_send_instructions.tr(),
                onPressed: _onSendInstructionsPressed,
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Future<void> _onSendInstructionsPressed() async {
    if (_emailController.text.isNotEmpty) {
      await _authCubit.resetPassword(email: _emailController.text);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(LocaleKeys.forgot_password_email_field_empty.tr()),
        ),
      );
    }
  }
}
