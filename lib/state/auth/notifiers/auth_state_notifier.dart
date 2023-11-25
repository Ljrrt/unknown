import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' hide Provider;
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unknown/state/auth/models/auth_result.dart';
import 'package:unknown/state/auth/models/user_auth.dart';
import 'package:unknown/state/constants/supabase_constants.dart';

class AuthStateNotifier extends StateNotifier<UserAuth> {
  /// First we start at unknown state, and if state object is changed,
  /// whoever is listening will be notified
  final supabase = Supabase.instance.client;

  AuthStateNotifier() : super(const UserAuth.unknown()) {
    if (supabase.auth.currentUser != null) {
      state = UserAuth(
        result: AuthResult.loggedIn,
        isLoading: false,
        accessToken: supabase.auth.currentSession?.accessToken,
      );
    }
  }

  Future<void> logOut() async {
    /// Set loading state until log out
    state = state.copiedWithIsLoading(true);

    /// Log out
    await supabase.auth.signOut();

    /// Set state to unknown(logged out)
    state = const UserAuth.loggedOut();
  }

  /// Log in with spotify
  Future<void> loginWithSpotify() async {
    state = state.copiedWithIsLoading(true);

    /// Perform web based OAuth login

    await supabase.auth.signInWithOAuth(
      Provider.spotify,
      redirectTo: kIsWeb ? null : SupabaseConstants.redirectUrl,
      authScreenLaunchMode: LaunchMode.platformDefault,
    );

    /// Listen to auth state changes in order to detect when the OAuth login is complete.

    supabase.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      state = UserAuth(
        result: event == AuthChangeEvent.signedIn
            ? AuthResult.loggedIn
            : AuthResult.aborted,
        isLoading: false,
        accessToken: data.session?.accessToken,
      );
    });
  }
}
