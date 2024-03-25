import 'package:flutter_nba/common/constants.dart';
import 'package:flutter_nba/data/api/player_api.dart';
import 'package:flutter_nba/data/api/team_api.dart';
import 'package:flutter_nba/data/api/dio.dart';
import 'package:flutter_nba/data/repository/player_repository.dart';
import 'package:flutter_nba/data/repository/team_repository.dart';
import 'package:flutter_nba/domain/usecase/get_player_usecase.dart';
import 'package:flutter_nba/domain/usecase/get_players_usecase.dart';
import 'package:flutter_nba/domain/usecase/get_team_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

///
/// Service locator
/// seems pretty much like a Koin in Kotlin to me
/// see> https://salmanbediya.medium.com/getit-simplifying-dependency-injection-with-service-locator-pattern-in-dart-and-flutter-62a2d7d105b8
///
final GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerSingleton<Dio>(buildDioClient(Constants.baseUrl));

  locator.registerSingleton<PlayerApi>(PlayerApi(locator<Dio>()));
  locator.registerSingleton<TeamApi>(TeamApi(locator<Dio>()));

  locator.registerSingleton<PlayerRepository>(PlayerRepository(playerApi: locator<PlayerApi>()));
  locator.registerSingleton<TeamRepository>(TeamRepository(teamApi: locator<TeamApi>()));

  locator.registerSingleton<GetPlayersUseCase>(GetPlayersUseCase(playerRepository: locator<PlayerRepository>()));
  locator.registerSingleton<GetPlayerUseCase>(GetPlayerUseCase(playerRepository: locator<PlayerRepository>()));
  locator.registerSingleton<GetTeamUseCase>(GetTeamUseCase(teamRepository: locator<TeamRepository>()));
}
