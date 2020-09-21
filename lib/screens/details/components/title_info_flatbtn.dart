import 'package:flutter/material.dart';
import 'package:moviesApp/models/movie.dart';

import '../../../constants.dart';

class TitleInfoAndFlatbtn extends StatelessWidget {
  const TitleInfoAndFlatbtn({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5 /* .copyWith(
                        fontWeight: FontWeight.bold,
                      ), */
                    ),
                Row(
                  children: [
                    Text(
                      movie.year.toString(),
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      'PG-13',
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      '2h 22mins',
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 64,
            height: 64,
            child: FlatButton(
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
