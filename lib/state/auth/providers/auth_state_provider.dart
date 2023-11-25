import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unknown/state/auth/models/user_auth.dart';
import 'package:unknown/state/auth/notifiers/auth_state_notifier.dart';

/// authStateProvider is like a singleton as is created only once, so we only create
/// one instance of AuthStateNotifier

final authStateProvider = StateNotifierProvider<AuthStateNotifier, UserAuth>(
  (_) => AuthStateNotifier(),
);
