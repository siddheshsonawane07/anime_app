import 'package:anime_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Available extends StatelessWidget {
  const Available({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Available: Demon Slayer",
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AnimeUI.cyan, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/demon.jpg',
                    fit: BoxFit.cover,
                  ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: SvgPicture.asset('assets/icons/play.svg'),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}