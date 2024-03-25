import 'package:flutter_nba/data/model/paging_info.dart';
import 'package:flutter_nba/data/model/player.dart';
import 'package:json_annotation/json_annotation.dart';

part 'players.g.dart';

@JsonSerializable()
class Players {
  @JsonKey(name: 'data')
  final List<Player> players;
  @JsonKey(name: 'meta')
  final PagingInfo pagingInfo;

  Players({
    required this.players,
    required this.pagingInfo,
  });

  factory Players.fromJson(Map<String, dynamic> json) =>
      _$PlayersFromJson(json);

  Map<String, dynamic> toJson() => _$PlayersToJson(this);
}
