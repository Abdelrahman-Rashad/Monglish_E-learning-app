import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'pivot.dart';

class Club extends Equatable {
  final int? id;
  final String? code;
  final String? name;
  final String? nameLocal;
  final int? typeId;
  final int? schoolId;
  final int? attendeesCountLimit;
  final int? removed;
  final String? searchText;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Pivot? pivot;

  const Club({
    this.id,
    this.code,
    this.name,
    this.nameLocal,
    this.typeId,
    this.schoolId,
    this.attendeesCountLimit,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  factory Club.fromMap(Map<String, dynamic> data) => Club(
        id: data['id'] as int?,
        code: data['code'] as String?,
        name: data['name'] as String?,
        nameLocal: data['name_local'] as String?,
        typeId: data['type_id'] as int?,
        schoolId: data['school_id'] as int?,
        attendeesCountLimit: data['attendees_count_limit'] as int?,
        removed: data['removed'] as int?,
        searchText: data['search_text'] as String?,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
        pivot: data['pivot'] == null
            ? null
            : Pivot.fromMap(data['pivot'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'code': code,
        'name': name,
        'name_local': nameLocal,
        'type_id': typeId,
        'school_id': schoolId,
        'attendees_count_limit': attendeesCountLimit,
        'removed': removed,
        'search_text': searchText,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'pivot': pivot?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Club].
  factory Club.fromJson(String data) {
    return Club.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Club] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      id,
      code,
      name,
      nameLocal,
      typeId,
      schoolId,
      attendeesCountLimit,
      removed,
      searchText,
      createdAt,
      updatedAt,
      pivot,
    ];
  }
}
