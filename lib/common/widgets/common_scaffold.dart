import 'dart:developer';

import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/app/modules/auth/cubit/auth_state_freezed.dart';
import 'package:sad_app/common/app_colors.dart';
import 'package:sad_app/common/app_styles.dart';
import 'package:sad_app/common/assets/animation_assets.dart';
import 'package:sad_app/common/assets/svg_assets.dart';
import 'package:sad_app/common/widgets/common_language_selector/language_cubit/language_cubit.dart';
import 'package:sad_app/common/widgets/common_language_selector/language_cubit/language_enum.dart';
import 'package:sad_app/common/widgets/common_language_selector/language_cubit/language_state.dart';
import 'package:sad_app/main.dart';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class CommonScaffold extends StatefulWidget {
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final PreferredSizeWidget? appBar;
  final Widget? child;
  final Widget? drawer;
  final bool? isLoading;
  final bool? hasLanguageSelect;
  final double countryTopPadding;
  final double countryRightPadding;
  final double countryLeftPadding;
  final double countryBottomPadding;
  const CommonScaffold({
    Key? key,
    this.appBar,
    required this.child,
    this.isLoading = false,
    this.hasLanguageSelect = false,
    this.countryTopPadding = 0.0,
    this.countryRightPadding = 0.0,
    this.countryLeftPadding = 0.0,
    this.countryBottomPadding = 0.0,
    this.drawer,
    this.backgroundColor = AppColors.blackPearl,
    this.resizeToAvoidBottomInset = true,
  }) : super(key: key);

  @override
  State<CommonScaffold> createState() => _CommonScaffoldState();
}

class _CommonScaffoldState extends State<CommonScaffold> {
  AuthCubit get _authCubit => Modular.get<AuthCubit>();
  LanguageCubit get _languageCubit => Modular.get<LanguageCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      bloc: _authCubit,
      listener: (context, state) {
        log(state.toString());
        if (state.user != null && (state.isEmailVerified ?? false)) {
          Modular.to.pushReplacementNamed('/home/');
        }
        if (state.user != null &&
            !(state.isEmailVerified ?? true) &&
            state.oobCode == null) {
          Modular.to.pushReplacementNamed('/emailVerifyPage/');
        }
        if (state.user == null) {
          Modular.to.pushReplacementNamed('/login');
        }
        /* if (state is ResetPassword) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Solicitação realizada com sucesso. Por favor, cheque sua caixa de email!',
              ),
            ),
          );
        } */
      },
      /* listenWhen: (previousState, currentState) {
        if (previousState is! ResetPassword && currentState is ResetPassword) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Solicitação realizada com sucesso. Por favor, cheque sua caixa de email!',
              ),
            ),
          );
        }
        return true;
      }, */
      child: BlocConsumer<LanguageCubit, LanguageState>(
        bloc: _languageCubit,
        listener: (context, state) {
          if (state.currentLanguage == null) {
            logger.d(
              EasyLocalization.of(context)?.currentLocale?.countryCode,
            );
          }
        },
        builder: (context, state) {
          if (state.currentLanguage == null) {
            List<Locale> supportedLocales = context.supportedLocales;
            List<String> supportedLocalesAsString =
                supportedLocales.map((e) => e.toString()).toList();
            _languageCubit.setCurrentLanguageAndAvailables(
              LanguageEnum.valueOf(context.locale.toString()),
              supportedLocalesAsString,
            );
          }
          return Scaffold(
            backgroundColor: widget.backgroundColor,
            resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
            appBar: widget.appBar,
            drawer: widget.drawer,
            body: SafeArea(
              child: Stack(
                children: [
                  widget.child!,
                  if (widget.hasLanguageSelect ?? false)
                    Padding(
                      padding: EdgeInsets.only(
                        top: widget.countryTopPadding,
                        left: widget.countryLeftPadding,
                        right: widget.countryRightPadding,
                        bottom: widget.countryBottomPadding,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: _onChangeLanguage,
                                child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                    state.currentLanguage ==
                                            LanguageEnum.portugues
                                        ? SvgAssets.brazil
                                        : state.currentLanguage ==
                                                LanguageEnum.ingles
                                            ? SvgAssets.usa
                                            : state.currentLanguage ==
                                                    LanguageEnum.alemao
                                                ? SvgAssets.germany
                                                : state.currentLanguage ==
                                                        LanguageEnum.frances
                                                    ? SvgAssets.france
                                                    : SvgAssets.spain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (widget.isLoading!)
                    Container(
                      color: AppColors.arsenic.withOpacity(0.5),
                      child: Center(
                        child: LottieBuilder.asset(
                            AnimationAssets.loadingAnimation),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _onChangeLanguage() async {
    _showGeneralDialog(
      icon: SvgAssets.connectedWorld,
      title: LocaleKeys.language_dialog_title.tr(),
      //subtitle: LocaleKeys.home_registered_contacts_text.tr(),
      /* onPress: () async {
        Modular.to.pop();
      }, */
    );
  }

  Future<void>? _showGeneralDialog({
    required String icon,
    required String title,
    String? subtitle,
    //required VoidCallback onPress,
  }) {
    return showDialog<void>(
      barrierDismissible: true,
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return Material(
          color: Colors.transparent,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.blackPearl,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: _onClosePressed,
                                    child:
                                        SvgPicture.asset(SvgAssets.menuClose),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              SizedBox(
                                height: 180,
                                child: SvgPicture.asset(icon),
                              ),
                              const SizedBox(height: 35),
                              Text(
                                title,
                                style: AppStyles.commonCardHeaderTextStyle(
                                    context),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 15),
                              if (subtitle != null)
                                Text(
                                  subtitle,
                                  style: AppStyles.commonCardSubtitleTextStyle(
                                      context),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _CountryWidget(
                                    languageCubit: _languageCubit,
                                    language: LanguageEnum.portugues,
                                    svgCountry: SvgAssets.brazil,
                                  ),
                                  _CountryWidget(
                                    languageCubit: _languageCubit,
                                    language: LanguageEnum.ingles,
                                    svgCountry: SvgAssets.usa,
                                  ),
                                  _CountryWidget(
                                    languageCubit: _languageCubit,
                                    language: LanguageEnum.alemao,
                                    svgCountry: SvgAssets.germany,
                                  ),
                                  _CountryWidget(
                                    languageCubit: _languageCubit,
                                    language: LanguageEnum.frances,
                                    svgCountry: SvgAssets.france,
                                  ),
                                  _CountryWidget(
                                    languageCubit: _languageCubit,
                                    language: LanguageEnum.espanhol,
                                    svgCountry: SvgAssets.spain,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onClosePressed() {
    Navigator.of(context).pop();
  }
}

class _CountryWidget extends StatelessWidget {
  const _CountryWidget({
    required this.languageCubit,
    required this.language,
    required this.svgCountry,
  });

  final LanguageCubit languageCubit;
  final String language;
  final String svgCountry;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        languageCubit.changeCurrentLanguageAndAvailables(
          language,
          [
            LanguageEnum.alemao,
            LanguageEnum.espanhol,
            LanguageEnum.frances,
            LanguageEnum.ingles,
            LanguageEnum.portugues,
          ],
          context,
        );
        Modular.to.pop();
      },
      child: SizedBox(
        height: 30,
        width: 30,
        child: SvgPicture.asset(svgCountry),
      ),
    );
  }

  String getCurrentLanguage() {
    return '';
  }
}
