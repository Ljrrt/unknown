import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:unknown/state/auth/constants/auth_constants.dart';
import 'package:unknown/state/auth/models/auth_result.dart';
import 'package:unknown/typedefs/typedefs.dart';

class Authenticator {
  const Authenticator();

  /// Create getters from firebase auth

  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;

  bool get isAlreadyLoggedIn => userId != null;

  String get displayName =>
      FirebaseAuth.instance.currentUser?.displayName ?? '';

  String? get email => FirebaseAuth.instance.currentUser?.email;

  /// Logout user from all providers
  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }

  /// Log in with google

  Future<AuthResult> logInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: [
      AuthConstants.emailScope,
    ]);

    /// Display google sign in dialog
    final signInAccount = await googleSignIn.signIn();
    if (signInAccount == null) {
      return AuthResult.aborted;
    }
    final googleAuth = await signInAccount.authentication;

    /// Get credentials from google
    final authCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    /// Give credentials to firebase auth
    try {
      await FirebaseAuth.instance.signInWithCredential(authCredential);
      return AuthResult.success;
    } catch (e) {
      return AuthResult.failure;
    }
  }
}
