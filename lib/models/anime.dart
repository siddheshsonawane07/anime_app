import 'dart:core';

class Anime {
  final String name;
  final double score;
  final int number;
  final String poster;
  Anime(
      {required this.name,
      required this.number,
      required this.poster,
      required this.score});
}

List<Anime> trendsData = [
  Anime(name: 's', number: 5, poster: "5", score: 6),
  Anime(name: 's', number: 5, poster: "5", score: 6),
  Anime(name: 's', number: 5, poster: "5", score: 6),
  Anime(name: 's', number: 5, poster: "5", score: 6),
  Anime(name: 's', number: 5, poster: "5", score: 6),
];
