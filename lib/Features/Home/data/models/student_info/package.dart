import 'dart:convert';

import 'package:equatable/equatable.dart';

class Package extends Equatable {
  final int? id;
  final String? name;
  final String? nameLocal;
  final int? months;
  final int? removed;

  const Package({
    this.id,
    this.name,
    this.nameLocal,
    this.months,
    this.removed,
  });

  factory Package.fromMap(Map<String, dynamic> data) => Package(
        id: data['id'] as int?,
        name: data['name'] as String?,
        nameLocal: data['name_local'] as String?,
        months: data['months'] as int?,
        removed: data['removed'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'name_local': nameLocal,
        'months': months,
        'removed': removed,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Package].
  factory Package.fromJson(String data) {
    return Package.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Package] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, name, nameLocal, months, removed];
}
