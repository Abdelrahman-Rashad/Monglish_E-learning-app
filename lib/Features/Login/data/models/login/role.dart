import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'pivot.dart';

class Role extends Equatable {
  final int? id;
  final String? name;
  final Pivot? pivot;

  const Role({this.id, this.name, this.pivot});

  factory Role.fromMap(Map<String, dynamic> data) => Role(
        id: data['id'] as int?,
        name: data['name'] as String?,
        pivot: data['pivot'] == null
            ? null
            : Pivot.fromMap(data['pivot'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'pivot': pivot?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Role].
  factory Role.fromJson(String data) {
    return Role.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Role] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, name, pivot];
}
