import 'package:flutter_nba/data/model/team.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player.g.dart';

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
  @JsonKey(name: 'height')
  final String? heightFeetInches;
  @JsonKey(name: 'weight')
  final String? weightPounds;
  @JsonKey(name: 'jersey_number')
  final String? jerseyNumber;
  @JsonKey(name: 'college')
  final String? college;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'draft_year')
  final int? draftYear;
  @JsonKey(name: 'draft_round')
  final int? draftRound;
  @JsonKey(name: 'draft_number')
  final int? draftNumber;
  @JsonKey(name: 'team')
  final Team? team;

  Player({
    required this.id,
    this.firstName,
    this.lastName,
    this.position,
    this.heightFeetInches,
    this.weightPounds,
    this.jerseyNumber,
    this.college,
    this.country,
    this.draftYear,
    this.draftRound,
    this.draftNumber,
    this.team,
  });

  factory Player.fromJson(Map<String, dynamic> json) =>
      _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
