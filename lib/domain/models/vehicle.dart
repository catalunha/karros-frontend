import 'package:freezed_annotation/freezed_annotation.dart';

import 'color.dart';
import 'model.dart';
import 'user.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class Vehicle with _$Vehicle {
  factory Vehicle({
    String? id,
    User? user,
    Model? model,
    Color? color,
    String? image,
    String? value,
    int? year,
    String? description,
    String? owner,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}



/*
{
  "count": 123,
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
  "results": [
    {
      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "user": {
        "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "email": "user@example.com",
        "first_name": "string",
        "phone": "string"
      },
      "model": {
        "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "name": "string",
        "brand": {
          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "name": "string"
        }
      },
      "color": {
        "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "name": "string"
      },
      "image": "string",
      "value": "94926237",
      "year": 9223372036854776000,
      "description": "string",
      "owner": "string"
    }
  ]
}
*/