import 'package:flutter/material.dart';

import 'package:moviesApp/models/movie.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  static const routeName = '/movie-details';

  const DetailsScreen({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        movie: movie,
      ),
    );
  }
}
