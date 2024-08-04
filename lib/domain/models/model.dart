import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Model with _$Model {
  factory Model({
    String? id,
    String? name,
    Brand? brand,
  }) = _Model;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}
