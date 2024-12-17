import 'dart:convert';

import 'package:equatable/equatable.dart';

class Gender extends Equatable {
  final int? id;
  final String? name;
  final String? nameLocal;

  const Gender({this.id, this.name, this.nameLocal});

  factory Gender.fromMap(Map<String, dynamic> data) => Gender(
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
  /// Parses the string and returns the resulting Json object as [Gender].
  factory Gender.fromJson(String data) {
    return Gender.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Gender] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, name, nameLocal];
}
