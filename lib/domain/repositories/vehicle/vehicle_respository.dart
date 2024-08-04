import '../../../data/rest/vehicle/vehicle_rest.dart';
import '../../models/vehicle_list.dart';

class VehicleRepository {
  final VehicleRest vehicleRest;

  VehicleRepository({required this.vehicleRest});

  Future<VehicleList> listAll(Map<String, dynamic> filter) async {
    final vehicleList = await vehicleRest.listAll(filter);
    return vehicleList;
  }
}
