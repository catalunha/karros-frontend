import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/env.dart';
import '../shared/controller/auth/providers.dart';
import '../vehicle/list/vehicle_lisl.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final profile = ref.watch(authProvider.select((s) => s.profile));

    return Scaffold(
      appBar: AppBar(
        title: Text('Karros - ${profile?.email ?? 'Visitante'}'),
      ),
      body: Column(
        children: [
          // Text('Futuros filtros'),
          Text(
            textAlign: TextAlign.center,
            'Versão ${Env.developmentMode ? "D" : "P"}-${Env.version}',
          ),
          const Flexible(
            child: SingleChildScrollView(
              child: Center(
                child: VehicleList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
