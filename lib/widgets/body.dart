import 'package:anime_app/widgets/available.dart';
import 'package:anime_app/widgets/header.dart';
import 'package:anime_app/widgets/recents.dart';
import 'package:anime_app/widgets/trends.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      Header(),
      Trends(),
      Recents(),
      Available(),
      SliverToBoxAdapter(
        child: SizedBox(
          height: kBottomNavigationBarHeight * 1.4,
        ),
      )
    ]);
  }
}
