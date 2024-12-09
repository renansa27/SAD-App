import 'package:flutter/material.dart';

abstract class AppColors {
  // Independent Colors.
  static const transparent = Color(0x00000000);
  static const black = Color(0xFF000000);
  static const white = Color(0xFFFFFFFF);
  static const grey = Color(0xFF879AA7);
  static const red = Color(0xFFEF0000);

  static const aliceBlue = Color(0xFFF7F9FA);
  static const curiousBlue = Color(0xFF2799D2);
  static const solitude = Color(0xFFE6ECF0);
  static const salmon = Color(0xFFFF7676);
  static const arsenic = Color(0xFF36454F);
  static const fruitSalad = Color(0xFF51B848);
  static const frenchGray = Color(0xFFBCBFC7);
  static const bermudaGrey = Color(0xFF6A8596);
  static const greyHeather = Color(0xFFACB7BF);
  static const geyser = Color(0xFFCCD6DD);
  static const blueHeather = Color(0xFFA0BBCE);
  static const pacificBlue = Color(0xFF0088CB);
  static const lightPattensBlue = Color(0xFFE6EEF2);
  static const darkPattensBlue = Color(0xFFD3DDE2);
  static const darkCerulean = Color(0xFF025A86);
  static const cerulean = Color(0xFF00AAEF);
  static const lightSkyBlue = Color(0xFF77D5FF);
  static const linkWater = Color(0xffDEEFF8);
  static const lochmara = Color(0xff0088CA);
  static const lochmaraDark = Color(0xff0080CC);
  static const deepSkyBlue = Color(0xFF00A6F8);
  static const bismark = Color(0xFF4B6D81);
  static const pastelGreen = Color(0xFF78F472);
  static const dandelion = Color(0xFFF8D368);
  static const bittersweet = Color(0xFFF86464);
  static const cinnabar = Color(0xFFEA4335);
  static const seaBuckthorn = Color(0xFFF49442);
  static const frostedMint = Color(0xFFDFF0E0);
  static const blackPearl = Color(0xFF192024);
  static const baliHali = Color(0xFF93989B);
  static const summerSky = Color(0xFF26BFF7);
  static const porcelain = Color(0xFFEAEEF0);
  static const porcelainDark = Color(0xFFECEFF0);
  static const silverChalice = Color(0xffA9A9A9);
  static const doveGray = Color(0xff727272);
  static const alabaster = Color(0xFFFAFAFA);
  static const vividTangerine = Color(0xFFFF8787);

  static const turquoise = Color(0xffFB415B);
  static const halloweenOrange = Color(0xffEE5623);

  static const primaryColor = pacificBlue;
  static const accentColor = pacificBlue;
  static const hintColor = pacificBlue;
  static const scaffoldBackgroundColor = aliceBlue;
  static const canvasColor = porcelainDark;
  static const dividerColor = fruitSalad;
  static const placeholderColor = silverChalice;
  static const labelCharactersColor = Color(0x99000000);
  static const commonAppBarTitle = arsenic;

  //TextFieldColors
  static const unlockColor = Color(0xff9BA2A7);
  static const labelColorTextFieldFocused = darkCerulean;
  static const labelColorTextFieldUnfocused = greyHeather;
  static const hintColorTextField = Color(0xFFA5A5A5);
  static const underlineColorTextField = frenchGray;
  static const borderTextFieldFocusedColor = pacificBlue;
  static const borderTextFieldColor = Color(0x1f000000);
  static const fillTextFieldColor = arsenic;
  static const shadowColor = Color(0x0f000000);
  static const hintsPasswordColor = doveGray;
  static const easyColor = pacificBlue;
  //Home
  static const itemColor = Color(0x34FFFFFF);
  static const gridContainerColor = Color(0xfff6f9fa);
  static const gridShadowContainerColor = Color(0xffe5e9ed);
  static const bottomNavigationColorText = Color(0xff118D06);
  static const bottomNavigationBorderText = Color(0x2751B848);
  static const expandedButtonStartGradientColor = pacificBlue;
  static const expandedButtonEndGradientColor = deepSkyBlue;
  //AppBar Colors
  static const appBarArrowBackColor = fruitSalad;
  static const appBarShadow = Color(0xEBE7EFF2);
  //DropDown Colors
  static const dropdownArrowColor = pacificBlue;
  static const dropdownTextColor = arsenic;
  static const dropdownBackgrounColor = Color(0xeeC8C8C8);
  static const dropdownArrowDisabledColor = greyHeather;
  //Login Flow Title
  static const loginFlowTitleColor = darkCerulean;
  static const loginBtnTextColor = alabaster;
  static const emailValidationLabelOneTextColor = arsenic;
  static const errorBreatheColor = baliHali;
  static const loginErrorContainerShadown = lightPattensBlue;
  //Social Button
  static const socialBtnColor = Color(0x0fC0C7CB);
  static const activeSocialBtn = alabaster;
  static const borderSocialBtn = Color(0xffC0C7CB);
  static const socialBtnlabelHover = baliHali;
  static const socialBtnlabelActive = arsenic;
  static const socialBtnLabelDefault = baliHali;
  static const socialBtnlabelDeactive = Color(0xffC0C7CB);
  //Confirm profile fields
  static const confirmProfileTextColor = arsenic;
  static const textFieldColor = arsenic;
  static const prefixTextFieldColor = darkCerulean;
  //Password Recovery Page Label Color
  static const labelColorPasswordRecovery = Color(0xFF666666);
  //Magic Link
  static const labelCheckEmailColor = pacificBlue;
  //Create Profile
  static const disabledCircleColor = Color(0xffCDD8E0);
  static const activeCircleColor = pacificBlue;
  static const activeShadowCircleColor = Color(0x800088CB);
  static const createProfileShadown = Color(0x406A8596);
  //Billing Page
  static const billingPageLabelTitleColor = Color(0xff4B6D81);
  static const billingPageCardInfoTitleColor = bittersweet;
  static const billingPageCardAmmountColor = cinnabar;
  static const billingPageCardDueDateColor = arsenic;
  static const billingPagePaymentValueColor = darkCerulean;
  static const billingPagePaymentDateColor = arsenic;
  //Strength field colors
  static const disable = Color(0xffE0E0E0);
  static const weak = Color(0xffE25059);
  static const soso = Color(0xffFFDB77);
  static const good = fruitSalad;
  static const great = Color(0xff3E8E37);
  //Common Error Page
  static const commonErrorPageSubtitle = arsenic;
  static const commonErrorPageOrText = frenchGray;

  //Business subscription Colors
  //Free Plan
  static const freeTitleColor = darkCerulean;
  static const freeSubtitleColor = arsenic;
  static const freeFeaturesColor = arsenic;
  static const freePriceColor = darkCerulean;
  static const freePeriodColor = arsenic;
  //Monthly Plan
  static const monthlyTitleColor = white;
  static const monthlySubtitleColor = white;
  static const monthlyFeaturesColor = white;
  static const monthlyPriceColor = white;
  static const monthlyPeriodColor = white;
  //Annuall Plan
  static const annuallyTitleColor = white;
  static const annuallySubtitleColor = white;
  static const annuallyFeaturesColor = white;
  static const annuallyPriceColor = white;
  static const annuallyPeriodColor = white;
  //Cards Color
  static const freePlanCardColor = linkWater;
  static const paidPlanMonthlyCardColor1 = pacificBlue;
  static const paidPlanMonthlyCardColor2 = darkCerulean;
  static const paidPlanAnnuallyCardColor1 = pacificBlue;
  static const paidPlanAnnuallyCardColor2 = darkCerulean;
  //Account Details
  static const subscriptionIconColor = fruitSalad;

  //Buttons Colors
  //Free
  static const freeBtnColor = linkWater;
  static const freeBtnBorderColor = pacificBlue;
  static const freeBtnTitleColor = pacificBlue;
  //Monthly
  static const monthlyBtnColor = pacificBlue;
  static const monthlyBtnTitleColor = white;
  //Annually
  static const annuallyBtnColor = pacificBlue;
  static const annuallyBtnTitleColor = white;

  //Invite shadow
  static const yesShadow = summerSky;

  static const noRiskColor = lightSkyBlue;
  static const lowRiskColor = pastelGreen;
  static const mediumRiskColor = dandelion;
  static const tallRiskColor = seaBuckthorn;
  static const veryHighRiskColor = bittersweet;

  //Linear gradient
  static const linear1 = Color(0xff0080CC);
  static const linear2 = Color(0xff00AAEF);

  // CommonAppBar.
  static const commonAppBar = AppColors.white;
  static const commonAppBarShadow = lightPattensBlue;

  // CommonCard.
  static const commonCardColor = aliceBlue;
  static const commonCardShadow = lightPattensBlue;
  static const commonCardHeader = darkCerulean;

  // CommonBlueActionButton.
  static const commonBlueActionButtonBackground = pacificBlue;
  static const commonBlueActionButtonText = alabaster;

  // CommonCreationNextButton.
  static const commonCreationNextButtonCircleShadow = Color(0x4D6A8596);
  static const commonCreationNextButtonCircle = aliceBlue;
  static const commonCreationNextButtonArrowShadow = Color(0xFFD2E2EA);

  // CommonCreationTextField text colors.
  static const commonCreationTextFieldHoverText = arsenic;
  static const commonCreationTextFieldFocusedText = arsenic;
  static const commonCreationTextFieldEnabledText = arsenic;
  static const commonCreationTextFieldDisabledText = arsenic;
  static const commonCreationTextFieldErrorText = Color(0xFFF20000);

  // CommonCreationTextField label colors.
  static const commonCreationTextFieldHoverLabel = frenchGray;
  static const commonCreationTextFieldFocusedLabel = pacificBlue;
  static const commonCreationTextFieldEnabledLabel = darkCerulean;
  static const commonCreationTextFieldDisabledLabel = Color(0xFFC0C7CB);
  static const commonCreationTextFieldErrorLabel = Color(0xFFF20000);

  // CommonExpansionCard.
  static const commonExpansionCardBackground = white;
  static const commonExpansionCardShadow = lightPattensBlue;
  static const commonExpansionCardHeaderText = darkCerulean;

  // Org Save Button.
  static const orgSaveButtonBackground = aliceBlue;
  static const orgSaveButtonText = darkCerulean;

  // CommonNavigationButton.
  static const commonNavigationButtonUnpressedBackground = white;
  static const commonNavigationButtonUnpressedShadow = Color(0x406A8596);
  static const commonNavigationButtonPressedBackground = aliceBlue;
  static const commonNavigationButtonPressedShadow = white;
  static const commonNavigationButtonText = arsenic;

  // OrgNavigationButton.
  static const orgNavigationButtonCircle = solitude;
  static const orgNavigationButtonNumber = fruitSalad;

  //OrgPopupMenu.
  static const orgPopupMenuCollapsedBackground = white;
  static const orgPopupMenuBorder = solitude;
  static const orgPopupMenuText = arsenic;
  static const orgPopupMenuExpandedBackground = Color(0xFFECF1F4);
  static const orgPopupMenuItemText = darkCerulean;

  //Survey.
  static const surveyAppBarTitle = white;
  static const surveyAppBarSectionTitle = white;
  static const surveyAppBarSectionDescription = white;
  static const surveyAppBarProgressBarBackground = white;
  static const surveyAppBarProgressBarValue = fruitSalad;
  static const surveyAppBarGradientStart = fruitSalad;
  static const surveyAppBarGradientEnd = darkCerulean;
  static const surveyQuestionText = darkCerulean;
  static const surveyOptionCardNotSelectedBackground = white;
  static const surveyOptionCardSelectedBackground = fruitSalad;
  static const surveyOptionCardNotSelectedContent = fruitSalad;
  static const surveyOptionCardSelectedContent = white;
  static const surveyBackButton = Color(0xFFDDE9EF);
  static const surveyNextButton = fruitSalad;
  static const surveyBackButtonArrow = Color(0xFFA1AFB9);
  static const surveyNextButtonArrow = white;
  static const surveySubmitDialogBackground = arsenic;
  static const surveySubmitDialog = aliceBlue;
  static const surveySubmitDialogTitle = darkCerulean;
  static const surveySubmitDialogContent = arsenic;
  static const surveyQuestionTile = white;
  static const surveyQuestionTileShadow = lightPattensBlue;
  static const surveyQuestionTileQuestion = darkCerulean;
  static const surveyQuestionTileAnswerContainer = Color(0xFFE3ECEF);
  static const surveyQuestionTileAnswer = fruitSalad;
  static const surveyCardText = white;
  static const surveyCardHeaderForeground = white;
  static const surveyCardButton = aliceBlue;
  static const surveyCardButtonText = darkCerulean;
  static const surveySubmitDialogButton = pacificBlue;
  static const surveySubmitDialogButtonText = alabaster;

  //Edit Employee Widget
  static const editEmployeeFirstName = arsenic;
  static const editEmployeeStudyType = arsenic;

  //Gradient
  static const turquoiseTohalloweenOrange = LinearGradient(
    colors: [Color(0xFFFB415B), Color(0xFFEE5623)],
  );
}
