import 'package:challeng_app/core/const/app_color.dart';
import 'package:challeng_app/features/repository/leaderboard_repository.dart';
import 'package:flutter/material.dart';

class PodiumWidget extends StatelessWidget {
  final String name;
  final String points;
  final int rank;
  final double barHeight;
  final bool showCrown;
  final String? imageUrl;
  final Color barColor;
  final Color textColor;
  final Color pointsColor;
  final Color badgeColor;
  final Widget? crownIcon;
  final LeaderboardType type;

  const PodiumWidget({
    super.key,
    required this.name,
    required this.points,
    required this.rank,
    required this.barHeight,
    this.showCrown = false,
    this.imageUrl,
    this.crownIcon,
    this.barColor = const Color(0xFFBDBDBD),
    this.textColor = AppColors.white,
    this.pointsColor = AppColors.red,
    this.badgeColor = AppColors.white,
    this.type = LeaderboardType.ganda,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 110,
              height: 65,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 0,
                    child: buildAvatar(imageUrl, barColor),
                  ),
                  Positioned(
                    right: 0,
                    child: buildAvatar(imageUrl, barColor),
                  ),
                ],
              ),
            ),
            if (showCrown && crownIcon != null)
              Positioned(
                bottom: -1,
                left: 0,
                right: 0,
                child: crownIcon!,
              ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: badgeColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            points,
            style: TextStyle(
              color: pointsColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: barHeight,
          width: 96,
          decoration: BoxDecoration(
            color: barColor.withOpacity(0.9),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  rank.toString(),
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildAvatar(String? imageUrl, Color barColor) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        color: AppColors.primary, 
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(2), 
      child: Container(
        decoration: BoxDecoration(
          color: barColor,
          shape: BoxShape.circle,
          image: imageUrl != null && imageUrl.isNotEmpty
              ? DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                )
              : null,
        ),
      ),
    );
  }
}
