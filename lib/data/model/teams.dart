import 'package:flutter_nba/data/model/paging_info.dart';
import 'package:flutter_nba/data/model/team.dart';
import 'package:json_annotation/json_annotation.dart';

part 'teams.g.dart';

@JsonSerializable()
class Teams {
  @JsonKey(name: 'data')
  final List<Team> teams;
  @JsonKey(name: 'meta')
  final PagingInfo pagingInfo;

  Teams({
    required this.teams,
    required this.pagingInfo,
  });

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);

  Map<String, dynamic> toJson() => _$TeamsToJson(this);
}
