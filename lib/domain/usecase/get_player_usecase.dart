import 'package:flutter_nba/data/repository/player_repository.dart';
import 'package:flutter_nba/domain/entity/player_entity.dart';

class GetPlayerUseCase {
  final PlayerRepository playerRepository;

  GetPlayerUseCase({required this.playerRepository});

  Stream<PlayerEntity?> call(int id) {
    return playerRepository.getPlayer(id);
  }
}
