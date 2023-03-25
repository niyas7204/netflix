import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/search/widget/search_idle.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.imagedata,
  });
  final String imagedata;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover)),
    );
  }
}

//sized moviecard
