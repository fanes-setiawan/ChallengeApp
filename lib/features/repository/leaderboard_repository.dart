
import 'package:challeng_app/core/utils/dummy_data.dart';
import 'package:challeng_app/features/data/user_score.dart';

enum LeaderboardType { komunitas, tunggal, ganda }

class LeaderboardRepository {
  List<UserScore> getLeaderboard(LeaderboardType type) {
    switch (type) {
      case LeaderboardType.komunitas:
        return DummyData.komunitas;
      case LeaderboardType.tunggal:
        return DummyData.tunggal;
      case LeaderboardType.ganda:
        return DummyData.ganda;
    }
  }
}
