import 'package:dio/dio.dart';
import 'package:flutter_nba/common/constants.dart';
import 'package:flutter_nba/data/model/team.dart';
import 'package:flutter_nba/data/model/teams.dart';
import 'package:retrofit/retrofit.dart';

part 'team_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class TeamApi {
  factory TeamApi(Dio dio, {String baseUrl}) = _TeamApi;

  @GET("teams")
  Future<Teams> getTeams({
    @Query("page") int page = 0,
    @Query("per_page") int perPage = Constants.itemsPerPage,
  });

  @GET("teams/{id}")
  Future<Team> getTeam(@Path("id") int id);
}
