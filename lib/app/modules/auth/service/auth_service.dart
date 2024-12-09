import 'dart:developer';
import 'package:sad_app/app/modules/auth/service/social_enum/social_enum.dart';
import 'package:sad_app/common/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthService {
  Future<String?> loginWithEmail({
    @required String? email,
    @required String? password,
  });
  Future<void> loginWithFacebook();
  Future<void> loginWithGoogleMobile();
  Future<void> reloadUser();
  bool isEmailVerified();
  User? getUser();
  Future<void> sendEmailVarification();
  Future<bool> checkEmailCallback(String? oobCode);
  Future<UserCredential?> signUpWithEmail({
    @required String? email,
    @required String? password,
  });
  Future<void> isUserLoggedIn();
  bool isSocialLogin();
  Future<FirebaseAuthException?> resetPassword({@required String? email});
  Future<void> confirmPasswordReset({
    String? oobCode,
    String? newPassword,
  });
  Future<void> logout();
  Future<void> deleteUser();
}

class AuthServiceImpl extends AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final Reference _userStorage =
      FirebaseStorage.instance.ref(userCollectionName);

  @override
  Future<String?> loginWithEmail({
    @required String? email,
    @required String? password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email!,
        password: password!,
      );
    } on FirebaseAuthException catch (e) {
      log(e.message ?? 'Error');
      return e.code;
    }
    return null;
  }

  @override
  User? getUser() {
    return _firebaseAuth.currentUser;
  }

  @override
  Future<UserCredential?> signUpWithEmail({
    @required String? email,
    @required String? password,
  }) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      return authResult;
    } on FirebaseAuthException catch (e) {
      log("Error: ${e.message ?? ''}");
    }
    return null;
  }

  @override
  Future<void> sendEmailVarification() async {
    await _firebaseAuth.currentUser?.sendEmailVerification();
  }

  @override
  Future<bool> checkEmailCallback(String? oobCode) async {
    if (oobCode != null) {
      await _firebaseAuth.checkActionCode(oobCode);
      await _firebaseAuth.applyActionCode(oobCode);
      return true;
    }
    return false;
  }

  @override
  bool isSocialLogin() {
    return isLoggedInWithFacebook() || isLoggedInWithGoogle();
  }

  bool isLoggedInWithFacebook() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser?.providerData.first.providerId == SocialEnum.facebook;
  }

  bool isLoggedInWithGoogle() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser?.providerData.first.providerId == SocialEnum.google;
  }

  @override
  Future<FirebaseAuthException?> resetPassword({
    @required String? email,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email!);
    } on FirebaseAuthException catch (e) {
      return e;
    }
    return null;
  }

  @override
  Future<void> confirmPasswordReset({
    String? oobCode,
    String? newPassword,
  }) async {
    await _firebaseAuth.confirmPasswordReset(
      code: oobCode!,
      newPassword: newPassword!,
    );
  }

  @override
  Future<void> isUserLoggedIn() async {
    var user = _firebaseAuth.currentUser;
    if (user != null) {
      //Populate User
    }
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> loginWithFacebook() async {
    try {
      final loginResult = await FacebookAuth.instance.login();
      final credential = FacebookAuthProvider.credential(
        loginResult.accessToken!.token,
      ) as FacebookAuthCredential;
      log(credential.toString());
      await _firebaseAuth.signInWithCredential(credential);
    } catch (e) {
      log('Error');
    }
  }

  @override
  Future<void> loginWithGoogleMobile() async {
    final googleUser = GoogleSignIn(
      scopes: [
        'https://www.googleapis.com/auth/userinfo.email',
      ],
    );
    GoogleSignInAccount? account;

    //Disconnect the current user, so he can choose a new email
    if (await googleUser.isSignedIn()) {
      await googleUser.disconnect();
    }
    account = await googleUser.signIn();

    final googleAuth = await account!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    ) as GoogleAuthCredential;
    await _firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<void> reloadUser() async {
    await _firebaseAuth.currentUser?.reload();
  }

  @override
  bool isEmailVerified() {
    return _firebaseAuth.currentUser?.emailVerified ?? false;
  }

  @override
  Future<void> deleteUser() async {
    try {
      final String? userId = _firebaseAuth.currentUser?.uid;
      if (userId != null) {
        await _deleteUserData(userId);
      }
      await _firebaseAuth.currentUser?.delete();
    } on FirebaseAuthException catch (e) {
      log(e.message ?? 'Error');
    }
  }

  Future<void> _deleteUserData(String userId) async {
    try {
      await _userStorage.child(userId).delete();
    } on FirebaseException catch (e) {
      log(e.message ?? 'Error');
    }
  }
}
