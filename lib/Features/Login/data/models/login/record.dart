import 'dart:convert';

import 'package:equatable/equatable.dart';

class Record extends Equatable {
  final int? id;
  final String? code;
  final String? name;
  final String? mobile;
  final String? email;
  final dynamic zoomEmail;
  final String? password;
  final dynamic tempPassword;
  final dynamic birthdate;
  final dynamic gender;
  final dynamic nationalityId;
  final dynamic personalEmail;
  final dynamic address;
  final dynamic postalCode;
  final dynamic countryId;
  final dynamic city;
  final dynamic phone;
  final dynamic nationalId;
  final dynamic studentEducation;
  final int? studentStatusTypeId;
  final int? studentRemainingLevels;
  final int? studentPackageId;
  final String? studentPackageStartAt;
  final dynamic reportingId;
  final int? status;
  final int? activationStatus;
  final String? notes;
  final int? removed;
  final String? oldCode;
  final String? searchText;
  final dynamic emailVerifiedAt;
  final String? createdAt;
  final String? updatedAt;
  final List<dynamic>? roles;

  const Record({
    this.id,
    this.code,
    this.name,
    this.mobile,
    this.email,
    this.zoomEmail,
    this.password,
    this.tempPassword,
    this.birthdate,
    this.gender,
    this.nationalityId,
    this.personalEmail,
    this.address,
    this.postalCode,
    this.countryId,
    this.city,
    this.phone,
    this.nationalId,
    this.studentEducation,
    this.studentStatusTypeId,
    this.studentRemainingLevels,
    this.studentPackageId,
    this.studentPackageStartAt,
    this.reportingId,
    this.status,
    this.activationStatus,
    this.notes,
    this.removed,
    this.oldCode,
    this.searchText,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.roles,
  });

  factory Record.fromMap(Map<String, dynamic> data) => Record(
        id: data['id'] as int?,
        code: data['code'] as String?,
        name: data['name'] as String?,
        mobile: data['mobile'] as String?,
        email: data['email'] as String?,
        zoomEmail: data['zoom_email'] as dynamic,
        password: data['password'] as String?,
        tempPassword: data['temp_password'] as dynamic,
        birthdate: data['birthdate'] as dynamic,
        gender: data['gender'] as dynamic,
        nationalityId: data['nationality_id'] as dynamic,
        personalEmail: data['personal_email'] as dynamic,
        address: data['address'] as dynamic,
        postalCode: data['postal_code'] as dynamic,
        countryId: data['country_id'] as dynamic,
        city: data['city'] as dynamic,
        phone: data['phone'] as dynamic,
        nationalId: data['national_id'] as dynamic,
        studentEducation: data['student_education'] as dynamic,
        studentStatusTypeId: data['student_status_type_id'] as int?,
        studentRemainingLevels: data['student_remaining_levels'] as int?,
        studentPackageId: data['student_package_id'] as int?,
        studentPackageStartAt: data['student_package_start_at'] as String?,
        reportingId: data['reporting_id'] as dynamic,
        status: data['status'] as int?,
        activationStatus: data['activation_status'] as int?,
        notes: data['notes'] as String?,
        removed: data['removed'] as int?,
        oldCode: data['old_code'] as String?,
        searchText: data['search_text'] as String?,
        emailVerifiedAt: data['email_verified_at'] as dynamic,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        roles: data['roles'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'code': code,
        'name': name,
        'mobile': mobile,
        'email': email,
        'zoom_email': zoomEmail,
        'password': password,
        'temp_password': tempPassword,
        'birthdate': birthdate,
        'gender': gender,
        'nationality_id': nationalityId,
        'personal_email': personalEmail,
        'address': address,
        'postal_code': postalCode,
        'country_id': countryId,
        'city': city,
        'phone': phone,
        'national_id': nationalId,
        'student_education': studentEducation,
        'student_status_type_id': studentStatusTypeId,
        'student_remaining_levels': studentRemainingLevels,
        'student_package_id': studentPackageId,
        'student_package_start_at': studentPackageStartAt,
        'reporting_id': reportingId,
        'status': status,
        'activation_status': activationStatus,
        'notes': notes,
        'removed': removed,
        'old_code': oldCode,
        'search_text': searchText,
        'email_verified_at': emailVerifiedAt,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'roles': roles,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Record].
  factory Record.fromJson(String data) {
    return Record.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Record] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      id,
      code,
      name,
      mobile,
      email,
      zoomEmail,
      password,
      tempPassword,
      birthdate,
      gender,
      nationalityId,
      personalEmail,
      address,
      postalCode,
      countryId,
      city,
      phone,
      nationalId,
      studentEducation,
      studentStatusTypeId,
      studentRemainingLevels,
      studentPackageId,
      studentPackageStartAt,
      reportingId,
      status,
      activationStatus,
      notes,
      removed,
      oldCode,
      searchText,
      emailVerifiedAt,
      createdAt,
      updatedAt,
      roles,
    ];
  }
}
