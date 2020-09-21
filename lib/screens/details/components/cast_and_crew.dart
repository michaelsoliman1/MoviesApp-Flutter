import 'package:flutter/material.dart';
import 'package:moviesApp/constants.dart';

import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List cast;

  const CastAndCrew({Key key, this.cast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast.length,
              itemBuilder: (context, index) => CastCard(
                cast: cast[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
