import 'package:flutter/material.dart';

import '../../../../domain/models/vehicle.dart';
import '../../../shared/app_view_image.dart';

class VehicleCardWidget extends StatelessWidget {
  final Vehicle item;
  const VehicleCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppViewImage(
                imageUrl: item.image,
              ),
              Text(
                '${item.model!.brand!.name} - ${item.model!.name}',
              ),
              Text('Ano  : ${item.year} Cor  : ${item.color!.name}'),
              Text('R\$ ${item.value}'),
              Text(
                'Desc.: ${item.description}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Text(item.id!.substring(0, 8)),
            ],
          ),
        ),
      ),
    );
  }
}
