import 'package:challeng_app/core/const/app_color.dart';
import 'package:challeng_app/core/const/asset_icon.dart';
import 'package:flutter/material.dart';

import '../core/utils/image_svg.dart';

class CustomButtonTextSheet extends StatelessWidget {
  final String title;

  final VoidCallback? onTitleTap;
  const CustomButtonTextSheet(
      {super.key, required this.title, this.onTitleTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 10.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(color: AppColors.dark),
          ),
          const SizedBox(width: 8.0),
          ImageSvg(assetName: arrBottom, size: 8.0)
        ],
      ),
    );
  }
}
