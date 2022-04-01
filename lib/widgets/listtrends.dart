import 'package:anime_app/constants/colors.dart';
import 'package:anime_app/models/anime.dart';
import 'package:flutter/material.dart';

class ListTrends extends StatelessWidget {
  const ListTrends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (_, constraints) {
        return ListView.builder(
            itemCount: trendsData.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 10, left: 20),
            itemBuilder: (_, index) {
              final anime = trendsData[index];
              final style = Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600);
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth * .375,
                  child: Column(children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          anime.poster,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(anime.name,
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 7.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SvgPicture.asset('assets/icons/home.svg'),
                        const SizedBox(width: 5),
                        Text(
                          'Rating: ${anime.score}',
                          style: Theme.of(context).textTheme.button?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 7.5),
                        Text(
                          '# ${anime.number}',
                          style: style?.copyWith(color: AnimeUI.cyan),
                        ),
                      ],
                    )
                  ]),
                ),
              );
            });
      }),
    );
  }
}
