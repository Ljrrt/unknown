import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unknown/state/auth/providers/auth_state_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Consumer(
          builder: (context, ref, child) => Center(
                child: ElevatedButton(
                    onPressed: () {
                      ref.read(authStateProvider.notifier).logOut();
                    },
                    child: Text('Logout')),
              )),
    );
  }
}
