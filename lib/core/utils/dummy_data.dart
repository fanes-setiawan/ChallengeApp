class UserScore {
  final String name;
  final int score;
  final String avatar;

  UserScore({required this.name, required this.score, required this.avatar});
}

final leaderboardDummy = [
  UserScore(name: "Andi", score: 150, avatar: "https://i.pravatar.cc/150?img=1"),
  UserScore(name: "Budi", score: 120, avatar: "https://i.pravatar.cc/150?img=2"),
  UserScore(name: "Citra", score: 110, avatar: "https://i.pravatar.cc/150?img=3"),
];
