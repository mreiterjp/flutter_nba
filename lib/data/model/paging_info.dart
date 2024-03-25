import 'package:json_annotation/json_annotation.dart';

part 'paging_info.g.dart';

@JsonSerializable()
class PagingInfo {
  @JsonKey(name: 'next_cursor')
  final int? nextPage;
  @JsonKey(name: 'per_page')
  final int perPage;

  PagingInfo({
    this.nextPage,
    required this.perPage,
  });

  factory PagingInfo.fromJson(Map<String, dynamic> json) =>
      _$PagingInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PagingInfoToJson(this);
}
