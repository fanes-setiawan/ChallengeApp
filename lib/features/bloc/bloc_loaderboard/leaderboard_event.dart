part of 'leaderboard_bloc.dart';

abstract class LeaderboardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadLeaderboard extends LeaderboardEvent {
  final LeaderboardType type;

  LoadLeaderboard(this.type);

  @override
  List<Object?> get props => [type];
}
