class UserScore {
  final String name;
  final String username;
  final int score;
  final String avatar;
  final String? region;

  UserScore({
    required this.name,
    required this.username,
    required this.score,
    required this.avatar,
    this.region
  });
}
