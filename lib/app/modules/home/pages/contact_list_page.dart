import 'package:sad_app/app/modules/home/models/contact/contact_model.dart';
import 'package:sad_app/common/widgets/common_app_bar.dart';
import 'package:sad_app/common/widgets/common_large_button.dart';
import 'package:sad_app/common/widgets/common_scaffold.dart';
import 'package:sad_app/app/modules/home/cubit/contacts_cubit/contact_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/contacts_cubit/contact_state.dart';
import 'package:sad_app/app/modules/home/cubit/filter_cubit/filter_cubit.dart';
import 'package:sad_app/app/modules/home/cubit/filter_cubit/filter_state.dart';
import 'package:sad_app/app/modules/home/widgets/common_card.dart';
import 'package:sad_app/common/app_colors.dart';
import 'package:sad_app/common/app_styles.dart';
import 'package:sad_app/common/assets/svg_assets.dart';
import 'package:sad_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({Key? key}) : super(key: key);

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  //final AuthCubit _authCubit = Modular.get<AuthCubit>();
  final ContactCubit _contactCubit = Modular.get<ContactCubit>();
  final FilterCubit _filterCubit = Modular.get<FilterCubit>();
  final TextEditingController _controller = TextEditingController();
  //Future<User?> get user async => await _authCubit.getUser();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      await _contactCubit.populateContactList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactCubit, ContactState>(
      bloc: _contactCubit,
      builder: (context, state) {
        return CommonScaffold(
          appBar: CommonAppBar(title: LocaleKeys.contact_list_title.tr()),
          isLoading: state.isLoading,
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Container(
                height: 150,
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                ),
                child: SvgPicture.asset(
                  SvgAssets.contactSearch,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: TextFormField(
                  controller: _controller,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: LocaleKeys.contact_list_search_contact.tr(),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Color(0x88EE5623)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Color(0xFFEE5623)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Color(0xFFEE5623)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEE5623),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.search_outlined,
                      color: Color(0xFFEE5623),
                    ),
                  ),
                  onChanged: (value) => _setFilterValue(
                      value,
                      (((!(state.isLoading ?? false) &&
                              state.contactList != null)
                          ? state.contactList
                          : null))),
                ),
              ),
              const SizedBox(height: 20),
              if (!(state.isLoading ?? false) && state.contactList != null)
                BlocBuilder<FilterCubit, FilterState>(
                    bloc: _filterCubit,
                    builder: (context, filterState) {
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.contactList?.length,
                        itemBuilder: (context, i) {
                          final contact = state.contactList?[i];
                          /* final filterValue = filterState is FilterLoaded
                              ? filterState.filterValue
                              : null; */
                          if ((state.contactList?.length ?? 0) > 0) {
                            if (filterState.filterValue != null
                                ? contact?.displayName
                                        ?.toLowerCase()
                                        .startsWith(filterState.filterValue
                                                ?.toLowerCase() ??
                                            '') ??
                                    false
                                : true) {
                              var phones = contact?.phones;
                              String? phone;
                              if ((phones?.length ?? 0) > 0) {
                                phone = contact?.phones
                                    ?.firstWhere(
                                        (element) => element.value != null)
                                    .value;
                              }
                              var name = contact?.displayName;
                              return Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, right: 15, left: 15),
                                child: CommonCard(
                                  padding: const EdgeInsets.all(15),
                                  onTap: () {
                                    _showActionsDialog(
                                      icon: SvgAssets.call,
                                      title:
                                          LocaleKeys.contact_list_connect.tr(),
                                      subtitle: LocaleKeys
                                          .contact_list_redirect_text
                                          .tr(),
                                      phone: phone,
                                    );
                                  },
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(18)),
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 15),
                                      const Icon(
                                        Icons.person_outline_rounded,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 15),
                                      Flexible(
                                        flex: 1,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              name ??
                                                  LocaleKeys
                                                      .contact_list_not_found
                                                      .tr(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              phone ??
                                                  LocaleKeys
                                                      .contact_list_not_found
                                                      .tr(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            } else {
                              return const SizedBox(
                                height: 0,
                                width: 0,
                              );
                            }
                          } else {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  LocaleKeys.contact_list_no_contact_found.tr(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            );
                          }
                        },
                      );
                    }),
              if (!(state.isLoading ?? false) && (state.contactList == null))
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.contact_list_no_contact_found.tr(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  Future<void>? _showActionsDialog({
    required String icon,
    required String title,
    required String subtitle,
    required String? phone,
  }) {
    return showDialog<void>(
      barrierDismissible: true,
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<ContactCubit, ContactState>(
            bloc: _contactCubit,
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 570,
                          minWidth: 320,
                        ),
                        width: MediaQuery.of(context).size.width - 30,
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
                                Text(
                                  subtitle,
                                  style: AppStyles.commonCardSubtitleTextStyle(
                                      context),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 15),
                                Row(children: [
                                  Flexible(
                                    flex: 1,
                                    child: CommonLargeButton(
                                      text: LocaleKeys.contact_list_call.tr(),
                                      iconData: Icons.call,
                                      onPressed: () async {
                                        await launchUrl(
                                          Uri(scheme: 'tel', path: phone),
                                        );
                                        //await launch("tel://$phone");
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  Flexible(
                                    flex: 1,
                                    child: CommonLargeButton(
                                      iconData: Icons.sms_outlined,
                                      text: LocaleKeys.contact_list_sms.tr(),
                                      onPressed: () async {
                                        await launchUrl(
                                          Uri(scheme: 'sms', path: phone),
                                        );
                                        //await launch("sms://$phone");
                                      },
                                    ),
                                  ),
                                ]),
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
                  ]),
                ],
              );
            });
      },
    );
  }

  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  void _setFilterValue(String value, List<ContactModel>? contactList) {
    _filterCubit.updateFilterValue(value: value);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
