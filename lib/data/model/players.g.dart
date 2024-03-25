// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Players _$PlayersFromJson(Map<String, dynamic> json) => Players(
      players: (json['data'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagingInfo: PagingInfo.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayersToJson(Players instance) => <String, dynamic>{
      'data': instance.players,
      'meta': instance.pagingInfo,
    };
