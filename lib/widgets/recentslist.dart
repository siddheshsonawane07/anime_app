import 'package:anime_app/models/anime.dart';
import 'package:flutter/material.dart';

class RecentsList extends StatelessWidget {
  const RecentsList({
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
            padding: const EdgeInsets.only(left: 20, top: 5),
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
            },
          );
        },
      ),
    );
  }
}
