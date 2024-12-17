import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'activity.dart';
import 'class.dart';
import 'club.dart';
import 'level.dart';
import 'lookups.dart';
import 'package.dart';
import 'package_club.dart';
import 'record.dart';
import 'school.dart';
import 'status_type.dart';
import 'track.dart';

class Data extends Equatable {
  final int? id;
  final String? code;
  final String? oldCode;
  final String? name;
  final bool? isEmailActivated;
  final bool? isMobileActivated;
  final String? shortName;
  final String? email;
  final String? mobile;
  final dynamic gender;
  final int? age;
  final Package? package;
  final DateTime? packageStartAt;
  final DateTime? packageExpireAt;
  final bool? isPackageExpired;
  final dynamic nationality;
  final StatusType? statusType;
  final List<dynamic>? roles;
  final Level? level;
  final Track? track;
  final School? school;
  final dynamic studentEducation;
  final List<dynamic>? parents;
  final int? remainingLevels;
  final int? removed;
  final String? notes;
  final Class? dataClass;
  final Record? record;
  final dynamic phone;
  final dynamic country;
  final dynamic birthdate;
  final dynamic city;
  final dynamic address;
  final dynamic postalCode;
  final List<Club>? clubs;
  final List<dynamic>? assessments;
  final List<dynamic>? submitted;
  final int? score;
  final int? points;
  final dynamic admissionStatus;
  final List<PackageClub>? packageClubs;
  final List<Activity>? activities;
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
    this.mobile,
    this.gender,
    this.age,
    this.package,
    this.packageStartAt,
    this.packageExpireAt,
    this.isPackageExpired,
    this.nationality,
    this.statusType,
    this.roles,
    this.level,
    this.track,
    this.school,
    this.studentEducation,
    this.parents,
    this.remainingLevels,
    this.removed,
    this.notes,
    this.dataClass,
    this.record,
    this.phone,
    this.country,
    this.birthdate,
    this.city,
    this.address,
    this.postalCode,
    this.clubs,
    this.assessments,
    this.submitted,
    this.score,
    this.points,
    this.admissionStatus,
    this.packageClubs,
    this.activities,
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
        mobile: data['mobile'] as String?,
        gender: data['gender'] as dynamic,
        age: data['age'] as int?,
        package: data['package'] == null
            ? null
            : Package.fromMap(data['package'] as Map<String, dynamic>),
        packageStartAt: data['package_start_at'] == null
            ? null
            : DateTime.parse(data['package_start_at'] as String),
        packageExpireAt: data['package_expire_at'] == null
            ? null
            : DateTime.parse(data['package_expire_at'] as String),
        isPackageExpired: data['is_package_expired'] as bool?,
        nationality: data['nationality'] as dynamic,
        statusType: data['status_type'] == null
            ? null
            : StatusType.fromMap(data['status_type'] as Map<String, dynamic>),
        roles: data['roles'] as List<dynamic>?,
        level: data['level'] == null
            ? null
            : Level.fromMap(data['level'] as Map<String, dynamic>),
        track: data['track'] == null
            ? null
            : Track.fromMap(data['track'] as Map<String, dynamic>),
        school: data['school'] == null
            ? null
            : School.fromMap(data['school'] as Map<String, dynamic>),
        studentEducation: data['student_education'] as dynamic,
        parents: data['parents'] as List<dynamic>?,
        remainingLevels: data['remaining_levels'] as int?,
        removed: data['removed'] as int?,
        notes: data['notes'] as String?,
        dataClass: data['class'] == null
            ? null
            : Class.fromMap(data['class'] as Map<String, dynamic>),
        record: data['record'] == null
            ? null
            : Record.fromMap(data['record'] as Map<String, dynamic>),
        phone: data['phone'] as dynamic,
        country: data['country'] as dynamic,
        birthdate: data['birthdate'] as dynamic,
        city: data['city'] as dynamic,
        address: data['address'] as dynamic,
        postalCode: data['postal_code'] as dynamic,
        clubs: (data['clubs'] as List<dynamic>?)
            ?.map((e) => Club.fromMap(e as Map<String, dynamic>))
            .toList(),
        assessments: data['assessments'] as List<dynamic>?,
        submitted: data['submitted'] as List<dynamic>?,
        score: data['score'] as int?,
        points: data['points'] as int?,
        admissionStatus: data['admissionStatus'] as dynamic,
        packageClubs: (data['package_clubs'] as List<dynamic>?)
            ?.map((e) => PackageClub.fromMap(e as Map<String, dynamic>))
            .toList(),
        activities: (data['activities'] as List<dynamic>?)
            ?.map((e) => Activity.fromMap(e as Map<String, dynamic>))
            .toList(),
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
        'mobile': mobile,
        'gender': gender,
        'age': age,
        'package': package?.toMap(),
        'package_start_at': packageStartAt?.toIso8601String(),
        'package_expire_at': packageExpireAt?.toIso8601String(),
        'is_package_expired': isPackageExpired,
        'nationality': nationality,
        'status_type': statusType?.toMap(),
        'roles': roles,
        'level': level?.toMap(),
        'track': track?.toMap(),
        'school': school?.toMap(),
        'student_education': studentEducation,
        'parents': parents,
        'remaining_levels': remainingLevels,
        'removed': removed,
        'notes': notes,
        'class': dataClass?.toMap(),
        'record': record?.toMap(),
        'phone': phone,
        'country': country,
        'birthdate': birthdate,
        'city': city,
        'address': address,
        'postal_code': postalCode,
        'clubs': clubs?.map((e) => e.toMap()).toList(),
        'assessments': assessments,
        'submitted': submitted,
        'score': score,
        'points': points,
        'admissionStatus': admissionStatus,
        'package_clubs': packageClubs?.map((e) => e.toMap()).toList(),
        'activities': activities?.map((e) => e.toMap()).toList(),
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
      mobile,
      gender,
      age,
      package,
      packageStartAt,
      packageExpireAt,
      isPackageExpired,
      nationality,
      statusType,
      roles,
      level,
      track,
      school,
      studentEducation,
      parents,
      remainingLevels,
      removed,
      notes,
      dataClass,
      record,
      phone,
      country,
      birthdate,
      city,
      address,
      postalCode,
      clubs,
      assessments,
      submitted,
      score,
      points,
      admissionStatus,
      packageClubs,
      activities,
      lookups,
    ];
  }
}
