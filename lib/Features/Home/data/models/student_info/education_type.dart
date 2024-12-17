import 'dart:convert';

import 'package:equatable/equatable.dart';

class EducationType extends Equatable {
  final int? id;
  final String? name;
  final String? nameLocal;

  const EducationType({this.id, this.name, this.nameLocal});

  factory EducationType.fromMap(Map<String, dynamic> data) => EducationType(
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
  /// Parses the string and returns the resulting Json object as [EducationType].
  factory EducationType.fromJson(String data) {
    return EducationType.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [EducationType] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, name, nameLocal];
}
