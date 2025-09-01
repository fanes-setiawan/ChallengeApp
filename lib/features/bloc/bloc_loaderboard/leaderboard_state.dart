part of 'leaderboard_bloc.dart';

abstract class LeaderboardState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LeaderboardLoading extends LeaderboardState {}

class LeaderboardLoaded extends LeaderboardState {
  final List<UserScore>? users;
  final LeaderboardType type;

  LeaderboardLoaded({
    this.users,
    required this.type,
  });
  LeaderboardLoaded copyWith({
    List<UserScore>? users,
    LeaderboardType? type,
  }) {
    return LeaderboardLoaded(
      users: users ?? this.users,
      type: type ?? this.type,
    );
  }

  @override
  List<Object?> get props => [users, type];
}
