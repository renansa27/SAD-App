import 'package:sad_app/common/utils/regex.dart';

bool validateEmail(String? value) {
  if (value == null || value.isEmpty) return false;
  final regExp = RegExp(RegExpPatterns.email);
  return regExp.hasMatch(value);
}

bool validatePassword(String? value) {
  if (value == null || value.isEmpty) return false;
  final regExp = RegExp(RegExpPatterns.password);
  return regExp.hasMatch(value);
}
