import 'dart:ffi';

import 'package:challeng_app/core/const/app_color.dart';
import 'package:challeng_app/features/data/user_score.dart';
import 'package:challeng_app/widgets/custom_card_user.dart';
import 'package:flutter/material.dart';

class ShowSheetWidget extends StatelessWidget {
  final List<UserScore>? data;
  const ShowSheetWidget({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(16.0)),
      padding: EdgeInsets.only(top: 8.0),
      child: Wrap(
        children: [
          const SizedBox(height: 12),
          Center(
            child: Container(
              width: 45,
              height: 5.0,
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            itemCount: data?.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              final user = data?[index];
              return CustomCardUser(
                name: user?.name ?? '',
                location: user?.region ?? '',
                points: user?.score ?? 0,
                imageUrl: user?.avatar ?? '',
                isSelected: index == 1 ? true : false,
                onTap: () {
                  print("Card dipilih");
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
