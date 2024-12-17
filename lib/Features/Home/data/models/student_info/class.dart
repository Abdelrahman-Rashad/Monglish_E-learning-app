import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'pivot.dart';

class Class extends Equatable {
  final int? id;
  final dynamic code;
  final String? name;
  final String? startDate;
  final String? endDate;
  final int? levelId;
  final dynamic supervisorId;
  final dynamic teacherId;
  final dynamic coTeacherId;
  final int? removed;
  final String? searchText;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Pivot? pivot;

  const Class({
    this.id,
    this.code,
    this.name,
    this.startDate,
    this.endDate,
    this.levelId,
    this.supervisorId,
    this.teacherId,
    this.coTeacherId,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  factory Class.fromMap(Map<String, dynamic> data) => Class(
        id: data['id'] as int?,
        code: data['code'] as dynamic,
        name: data['name'] as String?,
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        levelId: data['level_id'] as int?,
        supervisorId: data['supervisor_id'] as dynamic,
        teacherId: data['teacher_id'] as dynamic,
        coTeacherId: data['co_teacher_id'] as dynamic,
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
        'start_date': startDate,
        'end_date': endDate,
        'level_id': levelId,
        'supervisor_id': supervisorId,
        'teacher_id': teacherId,
        'co_teacher_id': coTeacherId,
        'removed': removed,
        'search_text': searchText,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'pivot': pivot?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Class].
  factory Class.fromJson(String data) {
    return Class.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Class] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      id,
      code,
      name,
      startDate,
      endDate,
      levelId,
      supervisorId,
      teacherId,
      coTeacherId,
      removed,
      searchText,
      createdAt,
      updatedAt,
      pivot,
    ];
  }
}
