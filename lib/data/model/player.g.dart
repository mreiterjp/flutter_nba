// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      id: json['id'] as int,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      position: json['position'] as String?,
      heightFeetInches: json['height'] as String?,
      weightPounds: json['weight'] as String?,
      jerseyNumber: json['jersey_number'] as String?,
      college: json['college'] as String?,
      country: json['country'] as String?,
      draftYear: json['draft_year'] as int?,
      draftRound: json['draft_round'] as int?,
      draftNumber: json['draft_number'] as int?,
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'position': instance.position,
      'height': instance.heightFeetInches,
      'weight': instance.weightPounds,
      'jersey_number': instance.jerseyNumber,
      'college': instance.college,
      'country': instance.country,
      'draft_year': instance.draftYear,
      'draft_round': instance.draftRound,
      'draft_number': instance.draftNumber,
      'team': instance.team,
    };
