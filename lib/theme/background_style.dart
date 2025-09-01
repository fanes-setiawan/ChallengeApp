import 'package:challeng_app/core/const/app_color.dart';
import 'package:flutter/material.dart';

import '../core/const/asset_image.dart';

class BackgroundImageStyle extends StatelessWidget {
  final Widget child;

  const BackgroundImageStyle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        image: DecorationImage(
          image: AssetImage(background),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
