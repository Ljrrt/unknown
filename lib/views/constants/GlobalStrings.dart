import 'package:flutter/foundation.dart' show immutable;

/// class to make the strings constants and easy to change. Also to be able in the future to change the language

@immutable
class GlobalStrings {
  ///log in
  static const logInWithSpotify = 'Link Spotify';

  ///log out
  static const logOut = 'Log out';
  static const areYouSureYouWantToLogOut = 'Are you sure you want to log out?';
  static const cancel = 'Cancel';

  const GlobalStrings._();
}
