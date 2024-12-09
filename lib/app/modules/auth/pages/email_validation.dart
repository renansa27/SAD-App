import 'package:sad_app/app/modules/auth/cubit/auth_state_freezed.dart';
import 'package:sad_app/common/widgets/common_scaffold.dart';
import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/common/app_colors.dart';
import 'package:sad_app/common/app_styles.dart';
import 'package:sad_app/common/widgets/common_app_bar.dart';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EmailValidationPage extends StatefulWidget {
  final String oobCode;
  const EmailValidationPage({
    Key? key,
    required this.oobCode,
  }) : super(key: key);

  @override
  State<EmailValidationPage> createState() => _EmailValidationPageState();
}

class _EmailValidationPageState extends State<EmailValidationPage> {
  final AuthCubit _authCubit = Modular.get<AuthCubit>();
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    if (widget.oobCode != '') {
      _authCubit.verifyEmail(widget.oobCode);
    } else {
      _authCubit.sendEmailVerification();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      backgroundColor: AppColors.aliceBlue,
      resizeToAvoidBottomInset: true,
      child: BlocBuilder<AuthCubit, AuthState>(
        bloc: _authCubit,
        builder: (context, state) {
          return CommonScaffold(
            appBar: CommonAppBar(title: LocaleKeys.email_validation_title.tr()),
            child: ListView(
              padding: const EdgeInsets.only(
                top: 20.0,
                right: 20.0,
                left: 20.0,
                bottom: 20.0,
              ),
              children: [
                Text(
                  LocaleKeys.email_validation_check_your_email.tr(),
                  style: AppStyles.roboto25BoldWhite(context),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Text(
                  LocaleKeys.email_validation_verification_text.tr(),
                  style: AppStyles.roboto15NormalWhite(context),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
