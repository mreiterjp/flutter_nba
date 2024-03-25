import 'package:fimber/fimber.dart';
import 'package:flutter_nba/data/api/player_api.dart';
import 'package:flutter_nba/domain/entity/player_entity.dart';

class PlayerRepository
{
  final PlayerApi playerApi;

  PlayerRepository({required this.playerApi});

  /// TODO: Implement proper paging method
  Stream<List<PlayerEntity>?> getPlayers() async* {
    final players = await playerApi.getPlayers();
    Fimber.d(' ${players}');
    yield  players.players.map((player) => player.toEntity()).toList();
  }

  Stream<PlayerEntity?> getPlayer(int id) async* {
    final player = await playerApi.getPlayer(id);
    yield player.toEntity();
  }
}
