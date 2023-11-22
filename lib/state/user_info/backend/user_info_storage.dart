import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:unknown/state/constants/firebase_collection.dart';
import 'package:unknown/state/constants/firebase_field.dart';
import 'package:unknown/state/user_info/models/user_info_payload.dart';
import 'package:unknown/typedefs/typedefs.dart';

@immutable
class UserInfoStorage {
  const UserInfoStorage();

  Future<bool> saveUserInfo({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) async {
    try {
      /// Check if we already have user info
      final userInfo = await FirebaseFirestore.instance
          .collection(FirebaseCollection.users)
          .where(FirebaseField.userId, isEqualTo: userId)
          .limit(1)
          .get();
      if (userInfo.docs.isNotEmpty) {
        /// If we do
        await userInfo.docs.first.reference.update({
          FirebaseField.displayName: displayName,
          FirebaseField.email: email,
        });
        return true;
      }

      /// We we don't
      final payload = UserInfoPayload(
        userId: userId,
        displayName: displayName,
        email: email,
      );
      await FirebaseFirestore.instance
          .collection(FirebaseCollection.users)
          .add(payload);
      return true;
    } catch (e) {
      return false;
    }
  }
}
