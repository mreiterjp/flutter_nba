// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Teams _$TeamsFromJson(Map<String, dynamic> json) => Teams(
      teams: (json['data'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagingInfo: PagingInfo.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamsToJson(Teams instance) => <String, dynamic>{
      'data': instance.teams,
      'meta': instance.pagingInfo,
    };
