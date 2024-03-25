import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'abbreviation')
  final String abbreviation;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'conference')
  final String conference;
  @JsonKey(name: 'division')
  final String division;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'name')
  final String name;

  Team({
    required this.id,
    required this.abbreviation,
    required this.city,
    required this.conference,
    required this.division,
    required this.fullName,
    required this.name,
  });

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
