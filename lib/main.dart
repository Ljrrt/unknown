import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unknown/extensions/widget_extensions.dart';
import 'package:unknown/state/constants/supabase_constants.dart';
import 'package:unknown/state/providers/is_loading_provider.dart';
import 'package:unknown/theme/theme_models.dart';
import 'package:unknown/views/screens/home/home_screen.dart';
import 'package:unknown/views/screens/login/login_screen.dart';

import 'state/auth/providers/is_logged_in_provider.dart';

/// Run app after supabase init

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: SupabaseConstants.url,
    anonKey: SupabaseConstants.anonKey,
  );

  runApp(const ProviderScope(child: App()));
}

/// Main app using MaterialApp

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'unknown',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: globalThemeData,
      home: Scaffold(
        body: Consumer(builder: (context, ref, child) {
          /// Display loading screen
          ref.listen(isLoadingProvider, (_, isLoading) {
            if (isLoading) {
            } else {}
          });

          /// Check if user is logged in
          final isLoggedIn = ref.watch(isLoggedInProvider);
          if (isLoggedIn) {
            return const HomeScreen();
          } else {
            return const LoginScreen().backgroundColor(Colors.blue);
          }
        }),
      ),
    );
  }
}

/// We don't actually need navigation between views, by simply changing the
/// state of the notifier, the homepage will be refreshed as is in a consumer
/// of [isLoggedInProvider].
