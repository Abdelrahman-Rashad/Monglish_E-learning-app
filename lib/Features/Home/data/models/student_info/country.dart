import 'dart:convert';

import 'package:equatable/equatable.dart';

class Country extends Equatable {
  final String? name;
  final String? nameLocal;
  final int? id;

  const Country({this.name, this.nameLocal, this.id});

  factory Country.fromMap(Map<String, dynamic> data) => Country(
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
  /// Parses the string and returns the resulting Json object as [Country].
  factory Country.fromJson(String data) {
    return Country.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Country] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [name, nameLocal, id];
}
