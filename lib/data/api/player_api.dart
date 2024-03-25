import 'package:dio/dio.dart';
import 'package:flutter_nba/common/constants.dart';
import 'package:flutter_nba/data/model/player.dart';
import 'package:flutter_nba/data/model/players.dart';
import 'package:retrofit/retrofit.dart';

part 'player_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class PlayerApi {
  factory PlayerApi(Dio dio, {String baseUrl}) = _PlayerApi;

  @GET("players")
  Future<Players> getPlayers({
    @Query("cursor") int page = 1,
    @Query("per_page") int perPage = Constants.itemsPerPage,
  });

  @GET("players/{id}")
  Future<Player> getPlayer(@Path("id") int id);
}