import 'package:challeng_app/features/data/user_score.dart';
import 'package:challeng_app/features/repository/leaderboard_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final LeaderboardRepository repository;

  LeaderboardBloc(this.repository) : super(LeaderboardLoading()) {
    on<LoadLeaderboard>((event, emit) {
      emit(LeaderboardLoading());
      final data = repository.getLeaderboard(event.type);
      emit(LeaderboardLoaded(users: data, type: event.type));
    });
  }
}
