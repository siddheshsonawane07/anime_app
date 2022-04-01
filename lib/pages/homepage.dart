import 'package:anime_app/constants/colors.dart';
import 'package:anime_app/constants/sliver_head_delegate.dart';
import 'package:anime_app/models/anime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
            slivers: [Header(), Trends(), Recents(), Available()]),
      ),
    );
  }
}

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
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/demon.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Recents extends StatelessWidget {
  const Recents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
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
              const ListRecents()
            ],
          ),
        ),
      ),
    );
  }
}

class ListRecents extends StatelessWidget {
  const ListRecents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder(
              itemCount: recentsData.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20, top: 10),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth * .25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(recentsData[index].poster,
                          fit: BoxFit.cover),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

class Trends extends StatelessWidget {
  const Trends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: AspectRatio(
          aspectRatio: 16 / 12,
          child: Column(children: const [HeaderTrends(), ListTrends()]),
        ),
      ),
    );
  }
}

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

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SliverCustomHeaderDelegate(
        minHeight: 60,
        maxHeight: 60,
        child: Container(
          color: AnimeUI.background,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'My Anime Stream',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: AnimeUI.cyan),
                    ),
                  ),
                  const Icon(Icons.search, color: Colors.white, size: 30)
                ],
              ),
              const SizedBox(height: 5),
              Text("What you would like to watch today ?",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
