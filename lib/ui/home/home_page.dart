import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/controller/auth/providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final profile = ref.watch(authProvider.select((s) => s.profile));

    return Scaffold(
      body: Column(
        children: [
          Text(profile?.id ?? ''),
          Text(profile?.email ?? ''),
          Text(profile?.firstName ?? ''),
          Text(profile?.phone ?? ''),
        ],
      ),
    );
  }
}
