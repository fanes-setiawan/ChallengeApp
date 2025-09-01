import 'package:challeng_app/core/const/app_color.dart';
import 'package:flutter/material.dart';
class AppbarStyle extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? iconTitle;
  final VoidCallback? onTitleTap;

  const AppbarStyle({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.actions,
    this.leading,
    this.iconTitle,
    this.onTitleTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      elevation: 0,
      centerTitle: centerTitle,
      leading: leading,
      title: GestureDetector(
        onTap: onTitleTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (iconTitle != null) const SizedBox(width: 5.0),
            if (iconTitle != null) iconTitle!,
          ],
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
