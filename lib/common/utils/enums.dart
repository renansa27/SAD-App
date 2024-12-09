import 'package:flutter/cupertino.dart';

class ErrorsEnum {
  //TODO translate all the errors
  static const String tooManyRequests = 'too-many-requests';
  static const String wrongPassword =
      'The password is invalid or the user does not have a password.';
  static const String userNotFound =
      'Não há registro de usuário existente correspondente ao identificador fornecido.';
  static const String emailAlreadyUsed = 'email-already-in-use';
  static const String invalidEmail =
      'O valor fornecido para a propriedade do usuário email é inválido. Precisa ser um endereço de e-mail de string.';
  static const String invalidPassword =
      'O valor fornecido para a propriedade do usuário password é inválido. Precisa ser uma string com pelo menos seis caracteres.';
  static const String invalidEmailAndPassword =
      'Não há registro de usuário existente correspondente ao identificador fornecido.';
  static const String passwordMustMatch = 'As senhas devem ser iguais.';
  static const String passwordLenght =
      'Senha deve conter no minimo 6 caracteres';
  static const String networkProblem =
      'Erro de conexão, verifique sua internet';
  static const String unkonwError = 'Erro desconhecido';
  static String valueOf(String? state, BuildContext context) {
    switch (state) {
      case 'wrong-password':
        return ErrorsEnum.invalidEmailAndPassword;
      case 'user-not-found':
        return ErrorsEnum.userNotFound;
      case 'invalid-email':
        return ErrorsEnum.invalidEmail;
      case 'invalid-password':
        return ErrorsEnum.invalidPassword;
      case 'invalid-email-and-password':
        return ErrorsEnum.invalidEmailAndPassword;
      case 'passwords-must-match':
        return ErrorsEnum.passwordMustMatch;
      case 'email-already-in-use':
        return ErrorsEnum.emailAlreadyUsed;
      case 'password-6-chars':
        return ErrorsEnum.passwordLenght;
      case 'network-problem':
        return ErrorsEnum.networkProblem;
      default:
        return ErrorsEnum.unkonwError;
    }
  }
}
