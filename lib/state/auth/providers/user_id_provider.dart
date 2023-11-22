import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unknown/state/auth/providers/auth_state_provider.dart';
import 'package:unknown/typedefs/typedefs.dart';

/// Get user id from authStateProvider
final userIdProvider = Provider<UserId?>(
  (ref) => ref.watch(authStateProvider).userId,
);
