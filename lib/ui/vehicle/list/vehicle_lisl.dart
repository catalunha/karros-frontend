import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller/providers.dart';
import 'widgets/vehicle_card.dart';

class VehicleList extends ConsumerStatefulWidget {
  const VehicleList({super.key});

  @override
  ConsumerState<VehicleList> createState() => _VehicleListState();
}

class _VehicleListState extends ConsumerState<VehicleList> {
  String page = '1';
  @override
  Widget build(BuildContext context) {
    final vehicleList = ref.watch(vehicleListProvider(page: page));
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
        // log('itens.length: ${itens.length}');
        String? previous;
        if (data.previous != null) {
          previous = data.previous!;
          if (previous.contains('page')) {
            previous = previous.split('page=')[1];
          } else {
            previous = '1';
          }
        }
        String? next;
        if (data.next != null) {
          next = data.next!;
          if (next.contains('page')) {
            next = next.split('page=')[1];
          } else {
            next = '1';
          }
        }
        final int pageActual = previous == null ? 1 : int.parse(previous) + 1;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(previous == null ? '' : 'Pag.: $previous'),
                IconButton(
                  onPressed: previous == null
                      ? null
                      : () {
                          setState(() {
                            page = previous!;
                          });
                        },
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  ' Pag.: $pageActual com ${itens.length} de ${data.count} carros',
                ),
                // Text('${data.previous}'),
                // Text('${data.next}'),
                IconButton(
                  onPressed: next == null
                      ? null
                      : () {
                          setState(() {
                            page = next!;
                          });
                        },
                  icon: const Icon(Icons.arrow_forward),
                ),
                Text(next == null ? '' : 'Pag.: $next'),
              ],
            ),
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
