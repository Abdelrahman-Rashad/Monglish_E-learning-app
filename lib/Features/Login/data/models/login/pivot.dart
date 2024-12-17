import 'dart:convert';

import 'package:equatable/equatable.dart';

class Pivot extends Equatable {
  final String? modelType;
  final int? modelId;
  final int? roleId;

  const Pivot({this.modelType, this.modelId, this.roleId});

  factory Pivot.fromMap(Map<String, dynamic> data) => Pivot(
        modelType: data['model_type'] as String?,
        modelId: data['model_id'] as int?,
        roleId: data['role_id'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'model_type': modelType,
        'model_id': modelId,
        'role_id': roleId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pivot].
  factory Pivot.fromJson(String data) {
    return Pivot.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Pivot] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [modelType, modelId, roleId];
}
