import 'package:flutter/foundation.dart';
import 'package:unknown/typedefs/typedefs.dart';

import 'auth_result.dart';

@immutable
class UserAuth {
  const UserAuth({
    required this.result,
    required this.isLoading,
    required this.accessToken,
  });

  const UserAuth.unknown()
      : result = null,
        isLoading = false,
        accessToken = null;

  final AuthResult? result;
  final bool isLoading;
  final AccessToken? accessToken;

  /// Creates a copy of this instance but with the given fields replaced with the is loading value
  UserAuth copiedWithIsLoading(bool isLoading) => UserAuth(
        result: result,
        isLoading: isLoading,
        accessToken: accessToken,
      );

  /// Override == operator to compare AuthState objects
  @override
  bool operator ==(covariant UserAuth other) =>
      identical(this, other) ||
      (result == other.result &&
          isLoading == other.isLoading &&
          accessToken == other.accessToken);

  @override
  int get hashCode => Object.hash(
        result,
        isLoading,
        accessToken,
      );
}
