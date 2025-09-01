import 'package:challeng_app/features/bloc/bloc_loaderboard/leaderboard_bloc.dart';
import 'package:challeng_app/features/presentation/leaderboard_page.dart';
import 'package:challeng_app/features/repository/leaderboard_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AYO Leaderboard',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: BlocProvider(
        create: (context) => LeaderboardBloc(LeaderboardRepository()),
        child: const LeaderboardPage(),
      ),
    );
  }
}
