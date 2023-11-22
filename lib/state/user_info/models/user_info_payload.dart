import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:unknown/state/constants/firebase_field.dart';
import 'package:unknown/typedefs/typedefs.dart';

/// Serialize values into map view, so instances of UserInfoPayload can be
/// stored directly in firestore

@immutable
class UserInfoPayload extends MapView<String, String> {
  UserInfoPayload({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) : super({
          FirebaseField.userId: userId,
          FirebaseField.displayName: displayName ?? '',
          FirebaseField.email: email ?? '',
        });
}
