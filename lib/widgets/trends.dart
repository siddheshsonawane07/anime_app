import 'package:anime_app/widgets/headertrends.dart';
import 'package:anime_app/widgets/listtrends.dart';
import 'package:flutter/material.dart';

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
