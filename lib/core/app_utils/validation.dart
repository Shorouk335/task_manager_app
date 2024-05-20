import 'regex.dart';
import 'package:easy_localization/easy_localization.dart';

class DefultValidation {

  static String? emailValidation(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return ("email_required".tr());
      } else if (!(RegexApp().emailReg.hasMatch(value.trim()))) {
        return ("email_invalid".tr());
      } else if (value
          .trim()
          .split("@")[0]
          .replaceAll(RegExp(r'[0-9]'), "")
          .isEmpty) {
        return ("email_invalid".tr());
      } else {
        return null;
      }
    }
    return null;
  }
  
  static String? defultEmailValidation(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return ("email_required".tr());
      }
    }
    return null;
  }

  static String? passwordValidation(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return ("password_requird".tr());
      } else if (!(value.length > 3)) {
        return ("passwors_short".tr());
      } else if (!(value.length < 120)) {
        return ("passwors_long".tr());
      } else {
        return null;
      }
    }
    return null;
  }
}
