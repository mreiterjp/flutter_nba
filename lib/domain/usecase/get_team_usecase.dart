import 'package:flutter_nba/data/repository/team_repository.dart';
import 'package:flutter_nba/domain/entity/team_entity.dart';

class GetTeamUseCase {
  final TeamRepository teamRepository;

  GetTeamUseCase({required this.teamRepository});

  Stream<TeamEntity?> call(int id) {
    return teamRepository.getTeam(id);
  }
}