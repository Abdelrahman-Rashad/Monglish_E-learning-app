import 'dart:convert';

import 'package:equatable/equatable.dart';

class Pivot extends Equatable {
  final int? userId;
  final int? levelId;

  const Pivot({this.userId, this.levelId});

  factory Pivot.fromMap(Map<String, dynamic> data) => Pivot(
        userId: data['user_id'] as int?,
        levelId: data['level_id'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'user_id': userId,
        'level_id': levelId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pivot].
  factory Pivot.fromJson(String data) {
    return Pivot.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Pivot] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [userId, levelId];
}
