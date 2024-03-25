import 'package:flutter_nba/data/repository/player_repository.dart';
import 'package:flutter_nba/domain/entity/player_entity.dart';

class GetPlayersUseCase {
  final PlayerRepository playerRepository;

  GetPlayersUseCase({required this.playerRepository});

  Stream<List<PlayerEntity>?> call() {
    return playerRepository.getPlayers();
  }
}
