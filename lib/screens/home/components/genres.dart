import 'package:flutter/material.dart';
import 'package:moviesApp/components/genre_card.dart';
import 'package:moviesApp/constants.dart';

class Genres extends StatelessWidget {
  List<String> genres = [
    'Action',
    'Crime',
    'Drama',
    'History',
    'Comedy',
    'Horror',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(
          genre: genres[index],
        ),
      ),
    );
  }
}
