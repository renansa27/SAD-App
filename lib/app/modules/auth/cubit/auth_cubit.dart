import 'dart:developer';

import 'package:sad_app/app/modules/auth/service/auth_service.dart';
import 'package:sad_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state_freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthService _authService;
  AuthCubit(this._authService) : super(AuthState.init());

  Future<void> loginWithEmailAndPassword({
    @required String? email,
    @required String? password,
  }) async {
    emit(state.copyWith(
      isLoading: true,
      error: null,
    ));
    try {
      String? res =
          await _authService.loginWithEmail(email: email, password: password);
      if (res != null) {
        emit(state.copyWith(
          isLoading: false,
          error: res,
        ));
      } else {
        getUser();
      }
    } on FirebaseAuthException catch (e) {
      //emitError(message: e.message);
      emit(state.copyWith(
        isLoading: false,
        error: e.message,
      ));
    }
  }

  Future<void> signUpWithEmail({
    @required String? email,
    @required String? password,
  }) async {
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      await _authService.signUpWithEmail(
        email: email,
        password: password,
      );
      await getUser();
      emit(state.copyWith(isLoading: false));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.message,
      ));
    }
  }

  Future<void> sendEmailVerification() async {
    await _authService.sendEmailVarification();
    logger.d('Enviou email de verificação');
  }

  Future<void> loginWithFacebook() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      await _authService.loginWithFacebook();
      getUser();
    } on FirebaseAuthException catch (e) {
      emitError(message: e.message);
    } catch (e) {
      emitError(message: e.toString());
    }
  }

  Future<void> loginWithGoogle() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      await _authService.loginWithGoogleMobile();
      getUser();
    } on FirebaseAuthException catch (e) {
      emitError(message: e.message);
    } catch (e) {
      emitError(message: e.toString());
    }
  }

  Future<void> resetPassword({@required String? email}) async {
    emit(state.copyWith(isLoading: true));
    try {
      await _authService.resetPassword(email: email);
      //emit(ResetPassword());
    } catch (e) {
      log('unhandeled error -  $e');
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<bool> passwordReset({
    String? oobCode,
    String? newPassword,
  }) async {
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      await _authService.confirmPasswordReset(
        oobCode: oobCode,
        newPassword: newPassword,
      );
      emit(state.copyWith(
        user: null,
        isLoading: false,
      ));
      return true;
    } catch (e) {
      log('unhandeled error -  $e');
      logger.e(e);
      return false;
    }
  }

  Future<void> verifyEmail(String? oobCode) async {
    emit(state.copyWith(
      isLoading: true,
      oobCode: oobCode,
    ));
    if (oobCode != null) {
      bool isEmailChecked = await checkEmail(oobCode);
      if (isEmailChecked) {
        await _authService.reloadUser();
        if (_authService.isEmailVerified()) {
          emit(state.copyWith(
            user: _authService.getUser(),
            isLoading: false,
            isEmailVerified: true,
            oobCode: oobCode,
          ));
          logger.d('Verificou');
        } else {
          emit(state.copyWith(
            user: _authService.getUser(),
            isLoading: false,
            isEmailVerified: false,
            oobCode: null,
          ));
          //emit(LoginEmailNotVerified());
          logger.d('Não verificou');
        }
      }
    }
  }

  Future<bool> checkEmail(String oobCode) async {
    return await _authService.checkEmailCallback(oobCode);
  }

  Future<void> getUser() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    final User? user = _authService.getUser();
    if (user != null &&
        (_authService.isEmailVerified() || _authService.isSocialLogin())) {
      //emit(LoginSuccess(user: user));
      emit(state.copyWith(
        isLoading: false,
        user: user,
        isEmailVerified: true,
      ));
      //return user;
    } else if (user != null) {
      emit(state.copyWith(
        isEmailVerified: false,
        isLoading: false,
        user: user,
      ));
      //return user;
    } else {
      //emit(Logout());
      emit(state.copyWith(
        user: user,
        isLoading: false,
      ));
    }
    //return null;
  }

  Future<void> logout() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      await _authService.logout();
      emit(state.copyWith(
        isLoading: false,
        user: null,
      ));
    } catch (e) {
      emitError(message: "Erro ao tentar fazer logout!");
    }
    emit(state.copyWith(
      isLoading: false,
    ));
  }

  Future<void> deleteUser() async {
    await _authService.deleteUser();
    emit(state.copyWith(user: null));
  }

  void emitUser() {
    emit(state);
  }

  void emitError({@required String? message}) {
    emit(state.copyWith(error: message, isLoading: false));
  }
}
