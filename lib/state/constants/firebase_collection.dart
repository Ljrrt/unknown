import 'package:flutter/foundation.dart' show immutable;

@immutable
class FirebaseCollection {
  ///Collection names

  static const thumbnails = 'thumbnails';
  static const comments = 'comments';
  static const likes = 'likes';
  static const posts = 'posts';
  static const users = 'users';

  const FirebaseCollection._();
}
