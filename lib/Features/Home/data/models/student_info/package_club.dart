import 'dart:convert';

import 'package:equatable/equatable.dart';

class PackageClub extends Equatable {
  final int? id;
  final int? packageId;
  final int? clubTypeId;
  final String? type;
  final int? sessions;
  final String? notes;
  final int? delClubId;
  final int? count;
  final String? name;
  final String? nameLocal;

  const PackageClub({
    this.id,
    this.packageId,
    this.clubTypeId,
    this.type,
    this.sessions,
    this.notes,
    this.delClubId,
    this.count,
    this.name,
    this.nameLocal,
  });

  factory PackageClub.fromMap(Map<String, dynamic> data) => PackageClub(
        id: data['id'] as int?,
        packageId: data['package_id'] as int?,
        clubTypeId: data['club_type_id'] as int?,
        type: data['type'] as String?,
        sessions: data['sessions'] as int?,
        notes: data['notes'] as String?,
        delClubId: data['del_club_id'] as int?,
        count: data['count'] as int?,
        name: data['name'] as String?,
        nameLocal: data['name_local'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'package_id': packageId,
        'club_type_id': clubTypeId,
        'type': type,
        'sessions': sessions,
        'notes': notes,
        'del_club_id': delClubId,
        'count': count,
        'name': name,
        'name_local': nameLocal,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PackageClub].
  factory PackageClub.fromJson(String data) {
    return PackageClub.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PackageClub] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      id,
      packageId,
      clubTypeId,
      type,
      sessions,
      notes,
      delClubId,
      count,
      name,
      nameLocal,
    ];
  }
}
