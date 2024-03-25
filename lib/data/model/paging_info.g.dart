// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingInfo _$PagingInfoFromJson(Map<String, dynamic> json) => PagingInfo(
      nextPage: json['next_cursor'] as int?,
      perPage: json['per_page'] as int,
    );

Map<String, dynamic> _$PagingInfoToJson(PagingInfo instance) =>
    <String, dynamic>{
      'next_cursor': instance.nextPage,
      'per_page': instance.perPage,
    };
