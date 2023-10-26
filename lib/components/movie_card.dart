import 'package:flutter/material.dart';
import 'package:bilheteria_panucci/screens/movie_screen.dart';

import '../models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          InkWell(
            child: Card(
              elevation: 6,
              clipBehavior: Clip.hardEdge,
              child: movie.imageURI != null
                  ? Image.network(
                      movie.imageURI.toString(),
                      fit: BoxFit.cover,
                    )
                  : const Center(
                      child: Icon(Icons.error),
                    ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieScreen(movie: movie),
              ),
            ),
          ),
          Text(
            movie.name,
            style: Theme.of(context).textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}
