import 'package:anime_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Available extends StatelessWidget {
  const Available({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 0),
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/demon.jpg',
                      fit: BoxFit.cover,
                      height: size.height * 0.5,
                      width: size.width,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/icons/play.png',
                      color: AnimeUI.cyan,
                      height: size.height * 0.10,
                      width: size.width * 0.10,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
