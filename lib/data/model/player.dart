import 'package:flutter_nba/data/model/team.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Player {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'position')
  final String? position;
  @JsonKey(name: 'height_feet')
  final int? heightFeet;
  @JsonKey(name: 'height_inches')
  final int? heightInches;
  @JsonKey(name: 'weight_pounds')
  final int? weightPounds;
  @JsonKey(name: 'team')
  final Team? team;

  Player({
    required this.id,
    this.firstName,
    this.lastName,
    this.position,
    this.heightFeet,
    this.heightInches,
    this.weightPounds,
    this.team,
  });

  Player.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        firstName = json['first_name'] == null ? "N/A" : json['first_name'] as String,
        lastName = json['last_name'] == null ? "N/A" : json['last_name'] as String,
        position = json['position'] == null ? "N/A" : json['position'] as String,
        heightFeet = json['height_feet'] == null ? 0 : json['height_feet'] as int,
        heightInches = json['height_inches'] == null ? 0 : json['height_inches'] as int,
        weightPounds = json['weight_pounds'] == null ? 0 : json['weight_pounds'] as int,
        team = json['team'] == null ? null : Team.fromJson(json['team'] as Map<String, dynamic>);

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'position': position,
        'height_feet': heightFeet,
        'height_inches': heightInches,
        'weight_pounds': weightPounds,
        'team': team,
      };
}
