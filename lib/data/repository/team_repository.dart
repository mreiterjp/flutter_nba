import 'package:flutter_nba/data/api/team_api.dart';
import 'package:flutter_nba/domain/entity/team_entity.dart';

class TeamRepository {
  final TeamApi teamApi;

  TeamRepository({required this.teamApi});

  Stream<TeamEntity?> getTeam(int id) async* {
    final team = await teamApi.getTeam(id);
    yield team.toEntity();
  }
}
