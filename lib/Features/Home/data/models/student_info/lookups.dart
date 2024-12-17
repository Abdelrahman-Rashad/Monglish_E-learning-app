import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'country.dart';
import 'education_type.dart';
import 'gender.dart';
import 'nationality.dart';
import 'package.dart';
import 'school.dart';
import 'status_type.dart';

class Lookups extends Equatable {
  final List<Gender>? genders;
  final List<Nationality>? nationalities;
  final List<Country>? countries;
  final List<StatusType>? statusTypes;
  final List<EducationType>? educationTypes;
  final List<School>? schools;
  final List<Package>? packages;

  const Lookups({
    this.genders,
    this.nationalities,
    this.countries,
    this.statusTypes,
    this.educationTypes,
    this.schools,
    this.packages,
  });

  factory Lookups.fromMap(Map<String, dynamic> data) => Lookups(
        genders: (data['genders'] as List<dynamic>?)
            ?.map((e) => Gender.fromMap(e as Map<String, dynamic>))
            .toList(),
        nationalities: (data['nationalities'] as List<dynamic>?)
            ?.map((e) => Nationality.fromMap(e as Map<String, dynamic>))
            .toList(),
        countries: (data['countries'] as List<dynamic>?)
            ?.map((e) => Country.fromMap(e as Map<String, dynamic>))
            .toList(),
        statusTypes: (data['status_types'] as List<dynamic>?)
            ?.map((e) => StatusType.fromMap(e as Map<String, dynamic>))
            .toList(),
        educationTypes: (data['education_types'] as List<dynamic>?)
            ?.map((e) => EducationType.fromMap(e as Map<String, dynamic>))
            .toList(),
        schools: (data['schools'] as List<dynamic>?)
            ?.map((e) => School.fromMap(e as Map<String, dynamic>))
            .toList(),
        packages: (data['packages'] as List<dynamic>?)
            ?.map((e) => Package.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'genders': genders?.map((e) => e.toMap()).toList(),
        'nationalities': nationalities?.map((e) => e.toMap()).toList(),
        'countries': countries?.map((e) => e.toMap()).toList(),
        'status_types': statusTypes?.map((e) => e.toMap()).toList(),
        'education_types': educationTypes?.map((e) => e.toMap()).toList(),
        'schools': schools?.map((e) => e.toMap()).toList(),
        'packages': packages?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Lookups].
  factory Lookups.fromJson(String data) {
    return Lookups.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Lookups] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      genders,
      nationalities,
      countries,
      statusTypes,
      educationTypes,
      schools,
      packages,
    ];
  }
}
