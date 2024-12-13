import 'package:sad_app/app/modules/home/cubit/donate_component_cubit/donate_component.dart';
import 'package:sad_app/app/modules/home/cubit/donate_component_cubit/donate_component_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/professional_cubit/professional_cubit.dart';
import 'package:sad_app/common/consts.dart';
import 'package:sad_app/common/widgets/common_large_button.dart';
import 'package:sad_app/common/widgets/common_scaffold.dart';
import 'package:sad_app/app/modules/auth/cubit/auth_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/contacts_cubit/contact_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/contacts_cubit/contact_state.dart';
import 'package:sad_app/app/modules/home/widgets/common_card.dart';
import 'package:sad_app/common/app_colors.dart';
import 'package:sad_app/common/app_styles.dart';
import 'package:sad_app/common/assets/svg_assets.dart';
import 'package:sad_app/main.dart';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthCubit _authCubit = Modular.get<AuthCubit>();
  final ContactCubit _contactCubit = Modular.get<ContactCubit>();
  final ProfessionalCubit _professionalCubit = Modular.get<ProfessionalCubit>();
  //final SadAppCubit _contactCubit = Modular.get<ContactCubit>();
  final DonateComponentCubit _donateComponentCubit =
      Modular.get<DonateComponentCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactCubit, ContactState>(
      bloc: _contactCubit,
      builder: (context, state) {
        return CommonScaffold(
          hasLanguageSelect: true,
          countryRightPadding: 15,
          countryTopPadding: 15,
          isLoading: state.isLoading,
          child: Center(
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                  ),
                  child: SvgPicture.asset(
                    SvgAssets.select,
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(15),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 30,
                    crossAxisCount: 2,
                    childAspectRatio: 1.76136363,
                    children: _getGridOptionsList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void>? _showGeneralDialog({
    required String icon,
    required String title,
    String? subtitle,
    String? legacyBtcAddress,
    String? pixAddress,
    String? segwitBtcAddress,
    String? ethAddress,
    String? usdtAddress,
    required String btnTitle,
    required VoidCallback onPress,
  }) {
    return showDialog<void>(
      barrierDismissible: true,
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<ContactCubit, ContactState>(
            bloc: _contactCubit,
            builder: (context, state) {
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
                                          child: SvgPicture.asset(
                                              SvgAssets.menuClose),
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
                                      style:
                                          AppStyles.commonCardHeaderTextStyle(
                                              context),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 15),
                                    if (subtitle != null)
                                      Text(
                                        subtitle,
                                        style: AppStyles
                                            .commonCardSubtitleTextStyle(
                                                context),
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                      ),
                                    BlocBuilder<DonateComponentCubit,
                                        DonateComponent>(
                                      bloc: _donateComponentCubit,
                                      builder: (context, state) {
                                        return Column(
                                          children: [
                                            if (pixAddress != null)
                                              _CryptoAddressWidget(
                                                paddingTop: 10,
                                                cryptoSvg: SvgAssets.pix,
                                                cryptoName: pixLabel,
                                                cryptoAddress: pixAddress,
                                                onTap: () =>
                                                    _donateComponentCubit
                                                        .showCheckedPix(),
                                                donateComponent: state,
                                              ),
                                            if (segwitBtcAddress != null)
                                              _CryptoAddressWidget(
                                                paddingTop: 10,
                                                cryptoSvg: SvgAssets.bitcoin,
                                                cryptoName: bitcoinLabel,
                                                cryptoAddress: segwitBtcAddress,
                                                onTap: () =>
                                                    _donateComponentCubit
                                                        .showCheckedBitcoin(),
                                                donateComponent: state,
                                              ),
                                            if (ethAddress != null)
                                              _CryptoAddressWidget(
                                                paddingTop: 10,
                                                cryptoSvg: SvgAssets.ethereum,
                                                cryptoName: ethereumLabel,
                                                cryptoAddress: ethAddress,
                                                onTap: () =>
                                                    _donateComponentCubit
                                                        .showCheckedEthereum(),
                                                donateComponent: state,
                                              ),
                                            if (usdtAddress != null)
                                              _CryptoAddressWidget(
                                                paddingBottom: 15,
                                                cryptoSvg: SvgAssets.usdt,
                                                cryptoName: tetherLabel,
                                                cryptoAddress: usdtAddress,
                                                onTap: () =>
                                                    _donateComponentCubit
                                                        .showCheckedTether(),
                                                donateComponent: state,
                                              ),
                                          ],
                                        );
                                      },
                                    ),
                                    const SizedBox(height: 15),
                                    CommonLargeButton(
                                      text: btnTitle,
                                      onPressed: onPress,
                                    ),
                                  ],
                                ),
                                if (state.isLoading ?? false)
                                  const Positioned.fill(
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        )),
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
            });
      },
    );
  }

  void copyToClipboard({required String cryptoAddress}) {
    Clipboard.setData(
      ClipboardData(text: cryptoAddress),
    );
  }

  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  List<Widget> _getGridOptionsList() {
    return [
      _buildContainer(
        icon: SvgPicture.asset(SvgAssets.uploadCloud),
        text: LocaleKeys.home_save_cloud.tr(),
        onTap: _onSaveOnCloud,
      ),
      _buildContainer(
        icon: SvgPicture.asset(SvgAssets.downloadCloud),
        text: LocaleKeys.home_retrieve_cloud.tr(),
        onTap: _onGetFromCloud,
      ),
      _buildContainer(
        icon: SvgPicture.asset(SvgAssets.fileText),
        text: LocaleKeys.home_export_contacts_csv.tr(),
        onTap: _onExportCsv,
      ),
      _buildContainer(
        icon: SvgPicture.asset(SvgAssets.fileText),
        text: LocaleKeys.home_import_contacts_csv.tr(),
        onTap: _onImportCsv,
      ),
      _buildContainer(
        icon: SvgPicture.asset(SvgAssets.users),
        text: LocaleKeys.home_check_contacts_cloud.tr(),
        onTap: _onGoToContactList,
      ),
      _buildContainer(
        icon: SvgPicture.asset(SvgAssets.userMinus),
        text: LocaleKeys.home_reset_contacts.tr(),
        onTap: _onDeleteAccountTapped,
      ),
      _buildContainer(
        icon: SvgPicture.asset(SvgAssets.coffee),
        text: LocaleKeys.home_buy_coffee.tr(),
        onTap: _onDonation,
      ),
      _buildContainer(
        icon: SvgPicture.asset(SvgAssets.logout),
        text: LocaleKeys.home_logout.tr(),
        onTap: _onLogoutTapped,
      ),
    ];
  }

  Widget _buildContainer({
    required SvgPicture icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return CommonCard(
      borderRadius: const BorderRadius.all(Radius.circular(18)),
      onTap: onTap,
      padding: const EdgeInsets.all(13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: icon,
          ),
          Flexible(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                text.toUpperCase(),
                style: AppStyles.homePageCardText(context),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onSaveOnCloud() async {
    _showGeneralDialog(
      icon: SvgAssets.uploading,
      title: LocaleKeys.home_save_contact_cloud.tr(),
      subtitle: LocaleKeys.home_registered_contacts_text.tr(),
      btnTitle: LocaleKeys.home_save.tr(),
      onPress: () async {
        Modular.to.pop();
        await _contactCubit.saveContactsCsvOnFirebase();
      },
    );
  }

  Future<void> _onGetFromCloud() async {
    _showGeneralDialog(
      icon: SvgAssets.download,
      title: LocaleKeys.home_retrieve_contacts.tr(),
      subtitle: LocaleKeys.home_retrieve_contacts.tr(),
      btnTitle: LocaleKeys.home_retrieve.tr(),
      onPress: () async {
        Modular.to.pop();
        await _contactCubit.importFirebaseContactsToDevice();
      },
    );
  }

  void _onExportCsv() {
    _showGeneralDialog(
      icon: SvgAssets.exportFile,
      title: LocaleKeys.home_export_your_contacts_csv.tr(),
      subtitle: LocaleKeys.home_export_contacts_text.tr(),
      btnTitle: LocaleKeys.home_export.tr(),
      onPress: () async {
        //Modular.to.pop();
        //await _professionalCubit.createProfessional();
        /* await _sadAppCubit.getProfessionalById(
          professionalId: 'v1QjUecINA1Y5qdJdyLQ',
        ); */
      },
    );
  }

  void _onImportCsv() {
    _showGeneralDialog(
      icon: SvgAssets.download,
      title: LocaleKeys.home_import_contacts_csv.tr(),
      subtitle: LocaleKeys.home_import_contacts_text.tr(),
      btnTitle: LocaleKeys.home_import.tr(),
      onPress: () async {
        Modular.to.pop();
        await _contactCubit.importCsvToDevice();
      },
    );
  }

  void _onGoToContactList() {
    Navigator.pushNamed(context, '/home/contactListPage');
  }

  void _onDonation() async {
    await _showGeneralDialog(
      icon: SvgAssets.crypto,
      title: LocaleKeys.home_my_crypto_address.tr(),
      subtitle: LocaleKeys.home_crypto_text.tr(),
      legacyBtcAddress: legacyBtcAddress,
      segwitBtcAddress: segwitBtcAddress,
      pixAddress: pixAddress,
      ethAddress: ethAddress,
      usdtAddress: usdtAddress,
      btnTitle: LocaleKeys.home_ok.tr(),
      onPress: () => Modular.to.pop(),
    );
  }

  Future<void> _onLogoutTapped() async {
    await _authCubit.logout();
  }

  Future<void> _onDeleteAccountTapped() async {
    _showGeneralDialog(
      icon: SvgAssets.cleanUp,
      title: LocaleKeys.home_delete_all_contacts.tr(),
      subtitle: LocaleKeys.home_delete_all_contacts.tr(),
      btnTitle: LocaleKeys.home_delete.tr(),
      onPress: () async {
        Modular.to.pop();
        await _contactCubit.deleteAllContacts();
      },
    );
  }
}

class _CryptoAddressWidget extends StatelessWidget {
  final String cryptoSvg;
  final String cryptoName;
  final String cryptoAddress;
  final double? paddingTop;
  final double? paddingBottom;
  final VoidCallback onTap;
  final DonateComponent donateComponent;

  const _CryptoAddressWidget({
    Key? key,
    required this.cryptoSvg,
    required this.cryptoName,
    required this.cryptoAddress,
    this.paddingTop,
    this.paddingBottom,
    required this.onTap,
    required this.donateComponent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        copyToClipboard(cryptoAddress: cryptoAddress);
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: paddingTop ?? 10,
          bottom: paddingBottom ?? 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  cryptoSvg,
                  height: 15,
                  width: 15,
                ),
                const SizedBox(width: 10),
                Text(
                  cryptoName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.halloweenOrange,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          cryptoAddress,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Column(
                        children: [
                          if (cryptoName == pixLabel)
                            Icon(
                              donateComponent.showCheckedPix!
                                  ? Icons.check
                                  : Icons.copy_outlined,
                            ),
                          if (cryptoName == bitcoinLabel)
                            Icon(
                              donateComponent.showCheckedBitcoin!
                                  ? Icons.check
                                  : Icons.copy_outlined,
                            ),
                          if (cryptoName == ethereumLabel)
                            Icon(
                              donateComponent.showCheckedEthereum!
                                  ? Icons.check
                                  : Icons.copy_outlined,
                            ),
                          if (cryptoName == tetherLabel)
                            Icon(
                              donateComponent.showCheckedTether!
                                  ? Icons.check
                                  : Icons.copy_outlined,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void copyToClipboard({required String cryptoAddress}) {
    Clipboard.setData(
      ClipboardData(text: cryptoAddress),
    );
    snackbarKey.currentState?.showSnackBar(
      SnackBar(content: Text(LocaleKeys.home_crypto_address_copied.tr())),
    );
  }
}
