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
  Anime(name: 'Naruto Shippuden', number: 1, poster: 'assets/images/naruto_shippuden.jpg', score: 8),
  Anime(name: 'Naruto ', number: 2, poster: 'assets/images/naruto.jpg', score: 7),
  Anime(name: 'Death Note', number: 3, poster: 'assets/images/deathnote.jpg', score: 8),
  Anime(name: 'Erased', number: 4, poster: 'assets/images/erased.jpg', score: 9),
  Anime(name: 'Attack on Titan', number: 5, poster: 'assets/images/aot.jpg', score: 9),
];

List<Anime> recentsData = [
  Anime(name: 'Rezero', number: 1, poster: 'assets/images/rezero.jpg', score: 8),
  Anime(name: 'Dr. Stone ', number: 2, poster: 'assets/images/dr.stone.png', score: 7),
  Anime(name: 'One Piece', number: 3, poster: 'assets/images/onepiece.jpg', score: 8),
  Anime(name: 'Tokyo Ghoul', number: 4, poster: 'assets/images/tokyo.jpg', score: 9),
  Anime(name: 'Steins Gate', number: 5, poster: 'assets/images/steins.jpg', score: 9),
];