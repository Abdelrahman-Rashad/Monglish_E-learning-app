import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'field.dart';
import 'pivot.dart';

class Level extends Equatable {
  final int? id;
  final dynamic code;
  final int? fieldId;
  final int? order;
  final String? name;
  final String? notes;
  final int? removed;
  final String? searchText;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Pivot? pivot;
  final Field? field;

  const Level({
    this.id,
    this.code,
    this.fieldId,
    this.order,
    this.name,
    this.notes,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
    this.field,
  });

  factory Level.fromMap(Map<String, dynamic> data) => Level(
        id: data['id'] as int?,
        code: data['code'] as dynamic,
        fieldId: data['field_id'] as int?,
        order: data['order'] as int?,
        name: data['name'] as String?,
        notes: data['notes'] as String?,
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
        field: data['field'] == null
            ? null
            : Field.fromMap(data['field'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'code': code,
        'field_id': fieldId,
        'order': order,
        'name': name,
        'notes': notes,
        'removed': removed,
        'search_text': searchText,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'pivot': pivot?.toMap(),
        'field': field?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Level].
  factory Level.fromJson(String data) {
    return Level.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Level] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      id,
      code,
      fieldId,
      order,
      name,
      notes,
      removed,
      searchText,
      createdAt,
      updatedAt,
      pivot,
      field,
    ];
  }
}
