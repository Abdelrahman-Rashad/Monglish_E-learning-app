import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'country.dart';
import 'gender.dart';
import 'nationality.dart';
import 'role.dart';

class Lookups extends Equatable {
  final List<Role>? roles;
  final List<Gender>? genders;
  final List<Nationality>? nationalities;
  final List<Country>? countries;

  const Lookups({
    this.roles,
    this.genders,
    this.nationalities,
    this.countries,
  });

  factory Lookups.fromMap(Map<String, dynamic> data) => Lookups(
        roles: (data['roles'] as List<dynamic>?)
            ?.map((e) => Role.fromMap(e as Map<String, dynamic>))
            .toList(),
        genders: (data['genders'] as List<dynamic>?)
            ?.map((e) => Gender.fromMap(e as Map<String, dynamic>))
            .toList(),
        nationalities: (data['nationalities'] as List<dynamic>?)
            ?.map((e) => Nationality.fromMap(e as Map<String, dynamic>))
            .toList(),
        countries: (data['countries'] as List<dynamic>?)
            ?.map((e) => Country.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'roles': roles?.map((e) => e.toMap()).toList(),
        'genders': genders?.map((e) => e.toMap()).toList(),
        'nationalities': nationalities?.map((e) => e.toMap()).toList(),
        'countries': countries?.map((e) => e.toMap()).toList(),
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
  List<Object?> get props => [roles, genders, nationalities, countries];
}
