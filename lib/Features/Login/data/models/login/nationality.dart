import 'dart:convert';

import 'package:equatable/equatable.dart';

class Nationality extends Equatable {
  final String? name;
  final String? nameLocal;
  final int? id;

  const Nationality({this.name, this.nameLocal, this.id});

  factory Nationality.fromMap(Map<String, dynamic> data) => Nationality(
        name: data['name'] as String?,
        nameLocal: data['name_local'] as String?,
        id: data['id'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'name_local': nameLocal,
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Nationality].
  factory Nationality.fromJson(String data) {
    return Nationality.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Nationality] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [name, nameLocal, id];
}
