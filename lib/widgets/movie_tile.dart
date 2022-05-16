import 'package:flutter/cupertino.dart';
import 'package:movie_app/models/movie.dart';
import 'package:get_it/get_it.dart';

class MovieTile extends StatelessWidget {
  final GetIt _getIt = GetIt.instance;
  final double height;
  final double width;
  final Movie movie;

  MovieTile({
    Key? key,
    required this.height,
    required this.width,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _moviePosterWidget(movie.posterURL()),
        ],
      ),
    );
  }

  Widget _moviePosterWidget(String _imgURL) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(_imgURL),
        ),
      ),
    );
  }
}
