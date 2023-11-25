import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unknown/state/auth/models/auth_result.dart';
import 'package:unknown/state/auth/providers/auth_state_provider.dart';

/// Watch authStateProvider and see if log in is successful

final isLoggedInProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.result == AuthResult.loggedIn;
});
