import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unknown/state/auth/providers/auth_state_provider.dart';
import 'package:unknown/theme/theme_models.dart';
import 'package:unknown/views/components/modular_lottie_animation.dart';
import 'package:unknown/views/constants/GlobalStrings.dart';

class SpotifyLogin extends ConsumerWidget {
  const SpotifyLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading =
        ref.watch(authStateProvider.select((value) => value.isLoading));
    return ElevatedButton(
      //even if it is an async function, we can just pass the function reference and keep going
      onPressed: ref.read(authStateProvider.notifier).loginWithSpotify,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ModularLottieAnimation(
            height: 44,
            width: 44,
            animation: LottieAnimation.spotifyLogo,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              GlobalStrings.logInWithSpotify,
              style: GlobalText.label.copyWith(color: GlobalColor.neutral50),
            ),
          ),
        ],
      ),
    );
  }
}
