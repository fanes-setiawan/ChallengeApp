import 'package:challeng_app/core/const/app_color.dart';
import 'package:challeng_app/core/const/asset_icon.dart';
import 'package:challeng_app/core/utils/image_svg.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String points;
  final String rank;
  final String? urlProfile;
  final VoidCallback onShare;
  final VoidCallback onDrop;

  const CustomCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.points,
    required this.rank,
    this.urlProfile,
    required this.onShare,
    required this.onDrop,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.dark.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.grey,
                          image: DecorationImage(
                            image: NetworkImage(
                              urlProfile ?? '',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              100.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              subtitle,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          "$points Pts",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: onDrop,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(100.0)),
                          child: ImageSvg(
                            assetName: arrBottom,
                            size: 8.0,
                            color: AppColors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Komunitasmu peringkat #$rank, bagikan yuk!",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: onShare,
                      icon: const Icon(
                        Icons.share,
                        size: 18,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
