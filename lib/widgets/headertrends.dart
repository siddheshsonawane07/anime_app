import 'package:anime_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HeaderTrends extends StatelessWidget {
  const HeaderTrends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: Text("Trends",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: AnimeUI.cyan, fontWeight: FontWeight.bold))),
          Text(
            "View all",
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: AnimeUI.cyan, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

