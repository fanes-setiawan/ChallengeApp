import 'package:challeng_app/features/data/user_score.dart';
import 'package:flutter/material.dart';

class LeaderboardContent extends StatelessWidget {
  final List<UserScore> users;

  const LeaderboardContent({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar)),
          title: Text(user.name),
          trailing: Text("${user.score} pts"),
        );
      },
    );
  }
}
