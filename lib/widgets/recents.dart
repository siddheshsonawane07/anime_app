import 'package:anime_app/constants/colors.dart';
import 'package:anime_app/widgets/recentslist.dart';
import 'package:flutter/material.dart';

class Recents extends StatelessWidget {
  const Recents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: AspectRatio(
          aspectRatio: 16 / 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Recently added",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: AnimeUI.cyan, fontWeight: FontWeight.bold))),
              const RecentsList()
            ],
          ),
        ),
      ),
    );
  }
}

