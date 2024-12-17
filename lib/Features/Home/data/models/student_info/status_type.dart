import 'dart:convert';

import 'package:equatable/equatable.dart';

class StatusType extends Equatable {
  final int? id;
  final String? name;
  final String? nameLocal;

  const StatusType({this.id, this.name, this.nameLocal});

  factory StatusType.fromMap(Map<String, dynamic> data) => StatusType(
        id: data['id'] as int?,
        name: data['name'] as String?,
        nameLocal: data['name_local'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'name_local': nameLocal,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [StatusType].
  factory StatusType.fromJson(String data) {
    return StatusType.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [StatusType] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, name, nameLocal];
}
