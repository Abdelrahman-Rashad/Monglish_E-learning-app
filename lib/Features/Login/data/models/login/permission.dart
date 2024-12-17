import 'dart:convert';

import 'package:equatable/equatable.dart';

class Permission extends Equatable {
  final int? id;
  final String? name;

  const Permission({this.id, this.name});

  factory Permission.fromMap(Map<String, dynamic> data) => Permission(
        id: data['id'] as int?,
        name: data['name'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Permission].
  factory Permission.fromJson(String data) {
    return Permission.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Permission] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, name];
}
