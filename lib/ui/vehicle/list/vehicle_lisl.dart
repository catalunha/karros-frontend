import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller/providers.dart';
import 'widgets/vehicle_card.dart';

class VehicleList extends ConsumerWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vehicleList = ref.watch(vehicleListProvider);
    return vehicleList.when(
      data: (data) {
        final itens = <Widget>[];

        for (var item in data.results) {
          itens.add(
            VehicleCardWidget(
              item: item,
            ),
          );
        }
        log('itens.length: ${itens.length}');
        return Column(
          children: [
            Wrap(
              children: itens,
            ),
          ],
        );
      },
      error: (error, stackTrace) {
        return const Center(
          child: Text('Erro em VehicleList'),
        );
      },
      loading: () {
        return const CircularProgressIndicator();
      },
    );
  }
}
