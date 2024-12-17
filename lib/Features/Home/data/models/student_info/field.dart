import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'root.dart';

class Field extends Equatable {
  final int? id;
  final dynamic code;
  final int? parentId;
  final int? nextId;
  final int? order;
  final String? name;
  final String? nameLocal;
  final int? rootId;
  final String? parentsIds;
  final int? type;
  final int? removed;
  final String? searchText;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Root? root;

  const Field({
    this.id,
    this.code,
    this.parentId,
    this.nextId,
    this.order,
    this.name,
    this.nameLocal,
    this.rootId,
    this.parentsIds,
    this.type,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.root,
  });

  factory Field.fromMap(Map<String, dynamic> data) => Field(
        id: data['id'] as int?,
        code: data['code'] as dynamic,
        parentId: data['parent_id'] as int?,
        nextId: data['next_id'] as int?,
        order: data['order'] as int?,
        name: data['name'] as String?,
        nameLocal: data['name_local'] as String?,
        rootId: data['root_id'] as int?,
        parentsIds: data['parents_ids'] as String?,
        type: data['type'] as int?,
        removed: data['removed'] as int?,
        searchText: data['search_text'] as String?,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
        root: data['root'] == null
            ? null
            : Root.fromMap(data['root'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'code': code,
        'parent_id': parentId,
        'next_id': nextId,
        'order': order,
        'name': name,
        'name_local': nameLocal,
        'root_id': rootId,
        'parents_ids': parentsIds,
        'type': type,
        'removed': removed,
        'search_text': searchText,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'root': root?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Field].
  factory Field.fromJson(String data) {
    return Field.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Field] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      id,
      code,
      parentId,
      nextId,
      order,
      name,
      nameLocal,
      rootId,
      parentsIds,
      type,
      removed,
      searchText,
      createdAt,
      updatedAt,
      root,
    ];
  }
}
