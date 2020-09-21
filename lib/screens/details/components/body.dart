import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moviesApp/constants.dart';
import 'package:moviesApp/models/movie.dart';

import 'Genres.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'title_info_flatbtn.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleInfoAndFlatbtn(movie: movie),
          Genres(movie: movie),
          PlotSummary(movie: movie),
          CastAndCrew(cast: movie.cast)
        ],
      ),
    );
  }
}

class PlotSummary extends StatelessWidget {
  const PlotSummary({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            'Plot Summary',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.plot,
            style: TextStyle(
              color: Color(0xFF737599),
            ),
          ),
        ),
      ],
    );
  }
}
