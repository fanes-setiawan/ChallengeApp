import 'package:challeng_app/core/const/app_color.dart';
import 'package:challeng_app/core/utils/image_svg.dart';
import 'package:challeng_app/features/bloc/bloc_loaderboard/leaderboard_bloc.dart';
import 'package:challeng_app/features/repository/leaderboard_repository.dart';
import 'package:challeng_app/features/widgets/show_Sheet.dart';
import 'package:challeng_app/theme/appbar_style.dart';
import 'package:challeng_app/theme/background_style.dart';
import 'package:challeng_app/widgets/custom_button_text_sheet.dart';
import 'package:challeng_app/widgets/custom_card.dart';
import 'package:challeng_app/widgets/custom_podium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/const/asset_icon.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});
  void _showLeaderboardTypeSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text("Komunitas"),
              onTap: () {
                Navigator.pop(context);
                context
                    .read<LeaderboardBloc>()
                    .add(LoadLeaderboard(LeaderboardType.komunitas));
              },
            ),
            ListTile(
              title: const Text("Tunggal"),
              onTap: () {
                Navigator.pop(context);
                context
                    .read<LeaderboardBloc>()
                    .add(LoadLeaderboard(LeaderboardType.tunggal));
              },
            ),
            ListTile(
              title: const Text("Ganda"),
              onTap: () {
                Navigator.pop(context);
                context
                    .read<LeaderboardBloc>()
                    .add(LoadLeaderboard(LeaderboardType.ganda));
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarStyle(
        title: "Summer 2025",
        onTitleTap: () => _showLeaderboardTypeSheet(context),
        leading: SizedBox(
          width: 40,
          child: Center(
            child: ImageSvg(
              assetName: arrLift,
              size: 16,
            ),
          ),
        ),
        iconTitle: ImageSvg(
          assetName: playIcon,
          size: 12.0,
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: AppColors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8.0)),
            child: ImageSvg(
              assetName: reportIcon,
              size: 24.0,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
        ],
      ),
      body: Stack(
        children: [
          BackgroundImageStyle(
            child: Column(
              children: [
                BlocBuilder<LeaderboardBloc, LeaderboardState>(
                  builder: (context, state) {
                    if (state is LeaderboardLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is LeaderboardLoaded) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            if (state.type == LeaderboardType.komunitas)
                              Row(
                                children: [
                                  CustomButtonTextSheet(
                                    title: "Mini Soccer",
                                    onTitleTap: () {},
                                  ),
                                  const SizedBox(width: 5.0),
                                  CustomButtonTextSheet(
                                    title: "Surabaya",
                                    onTitleTap: () {},
                                  ),
                                ],
                              ),
                            if (state.type == LeaderboardType.tunggal ||
                                state.type == LeaderboardType.ganda)
                              Row(
                                children: [
                                  CustomButtonTextSheet(
                                    title: "Tenis Meja",
                                    onTitleTap: () {},
                                  ),
                                  const SizedBox(width: 5.0),
                                  CustomButtonTextSheet(
                                    title: "Tunggal",
                                    onTitleTap: () {},
                                  ),
                                  const SizedBox(width: 5.0),
                                  CustomButtonTextSheet(
                                    title: "Surabaya",
                                    onTitleTap: () {},
                                  ),
                                ],
                              ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            CustomCardWidget(
                              title: "Far East United",
                              subtitle: "Surabaya",
                              points: "50",
                              rank: "456",
                              onShare: () {},
                              onDrop: () async {
                                await showModalBottomSheet<void>(
                                  context: context,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(16)),
                                  ),
                                  builder: (BuildContext context) {
                                    return ShowSheetWidget(
                                      data: state.users,
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    }
                    return const Center(
                        child: Text("Pilih kategori leaderboard"));
                  },
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    PodiumWidget(
                      name: "User B",
                      points: "121 Pts",
                      rank: 2,
                      barHeight: MediaQuery.of(context).size.height / 1.85,
                      imageUrl: "",
                    ),
                    PodiumWidget(
                      name: "User A",
                      points: "400 Pts",
                      rank: 1,
                      barHeight: MediaQuery.of(context).size.height / 1.75,
                      imageUrl: "",
                      showCrown: true,
                      crownIcon: ImageSvg(assetName: crown),
                    ),
                    PodiumWidget(
                      name: "User C",
                      points: "107 Pts",
                      rank: 3,
                      barHeight: MediaQuery.of(context).size.height / 1.9,
                      imageUrl: "",
                    ),
                  ],
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.45,
            minChildSize: 0.45,
            maxChildSize: 0.75,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Column(
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
                    Expanded(
                      child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
                        builder: (context, state) {
                          if (state is LeaderboardLoading) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (state is LeaderboardLoaded) {
                            return ListView.builder(
                              controller: scrollController,
                              itemCount: state.users!.length,
                              itemBuilder: (context, index) {
                                final user = state.users![index];
                                return ListTile(
                                  isThreeLine: true,
                                  textColor: AppColors.grey,
                                  leading: CircleAvatar(
                                    child: Text(
                                      user.name[0],
                                      style: TextStyle(color: AppColors.dark),
                                    ),
                                  ),
                                  title: Text(user.name),
                                  subtitle: Text(
                                    (state.type != LeaderboardType.komunitas)
                                        ? "@${user.username}"
                                        : "${user.region}",
                                    style: TextStyle(color: AppColors.dark),
                                  ),
                                  trailing: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      (user.score >= 100)
                                          ? ImageSvg(
                                              assetName: upIcon,
                                              size: 12,
                                            )
                                          : ImageSvg(
                                              assetName: downIcon,
                                              size: 12,
                                            ),
                                      Text(
                                        "${user.score} Pts",
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }
                          return const Center(
                              child: Text("Pilih kategori leaderboard"));
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
