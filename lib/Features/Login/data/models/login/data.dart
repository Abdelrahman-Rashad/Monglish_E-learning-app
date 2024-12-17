import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'lookups.dart';
import 'record.dart';
import 'role.dart';

class Data extends Equatable {
  final int? id;
  final String? code;
  final String? oldCode;
  final String? name;
  final bool? isEmailActivated;
  final bool? isMobileActivated;
  final String? shortName;
  final String? email;
  final dynamic zoomEmail;
  final String? mobile;
  final dynamic phone;
  final List<Role>? roles;
  final dynamic gender;
  final dynamic age;
  final dynamic nationality;
  final int? removed;
  final Record? record;
  final dynamic birthdate;
  final dynamic country;
  final List<dynamic>? permissions;
  final int? hasLevels;
  final Lookups? lookups;

  const Data({
    this.id,
    this.code,
    this.oldCode,
    this.name,
    this.isEmailActivated,
    this.isMobileActivated,
    this.shortName,
    this.email,
    this.zoomEmail,
    this.mobile,
    this.phone,
    this.roles,
    this.gender,
    this.age,
    this.nationality,
    this.removed,
    this.record,
    this.birthdate,
    this.country,
    this.permissions,
    this.hasLevels,
    this.lookups,
  });

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        id: data['id'] as int?,
        code: data['code'] as String?,
        oldCode: data['old_code'] as String?,
        name: data['name'] as String?,
        isEmailActivated: data['is_email_activated'] as bool?,
        isMobileActivated: data['is_mobile_activated'] as bool?,
        shortName: data['short_name'] as String?,
        email: data['email'] as String?,
        zoomEmail: data['zoom_email'] as dynamic,
        mobile: data['mobile'] as String?,
        phone: data['phone'] as dynamic,
        roles: (data['roles'] as List<dynamic>?)
            ?.map((e) => Role.fromMap(e as Map<String, dynamic>))
            .toList(),
        gender: data['gender'] as dynamic,
        age: data['age'] as dynamic,
        nationality: data['nationality'] as dynamic,
        removed: data['removed'] as int?,
        record: data['record'] == null
            ? null
            : Record.fromMap(data['record'] as Map<String, dynamic>),
        birthdate: data['birthdate'] as dynamic,
        country: data['country'] as dynamic,
        permissions: data['permissions'] as List<dynamic>?,
        hasLevels: data['has_levels'] as int?,
        lookups: data['lookups'] == null
            ? null
            : Lookups.fromMap(data['lookups'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'code': code,
        'old_code': oldCode,
        'name': name,
        'is_email_activated': isEmailActivated,
        'is_mobile_activated': isMobileActivated,
        'short_name': shortName,
        'email': email,
        'zoom_email': zoomEmail,
        'mobile': mobile,
        'phone': phone,
        'roles': roles?.map((e) => e.toMap()).toList(),
        'gender': gender,
        'age': age,
        'nationality': nationality,
        'removed': removed,
        'record': record?.toMap(),
        'birthdate': birthdate,
        'country': country,
        'permissions': permissions,
        'has_levels': hasLevels,
        'lookups': lookups?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Data].
  factory Data.fromJson(String data) {
    return Data.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Data] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      id,
      code,
      oldCode,
      name,
      isEmailActivated,
      isMobileActivated,
      shortName,
      email,
      zoomEmail,
      mobile,
      phone,
      roles,
      gender,
      age,
      nationality,
      removed,
      record,
      birthdate,
      country,
      permissions,
      hasLevels,
      lookups,
    ];
  }
}
