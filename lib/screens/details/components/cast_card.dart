import 'package:flutter/material.dart';
import 'package:moviesApp/constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({Key key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(cast['image']),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
            maxLines: 2,
          ),
          SizedBox(height: kDefaultPadding / 4),
          Text(
            cast['movieName'],
            textAlign: TextAlign.center,
            style: TextStyle(color: kTextLightColor),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
