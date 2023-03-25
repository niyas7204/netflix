import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/common_widgets/title.dart';

class CatogoryList extends StatelessWidget {
  const CatogoryList({
    super.key,
    required this.text,
    required this.size,
    required this.imageData,
  });

  final Size size;
  final String text;
  final String imageData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(text: text),
        kheight,
        LimitedBox(
          maxHeight: size.height * .20,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(5,
                  (index) => SizedMovieCard(size: size, imageData: imageData))),
        ),
      ],
    );
  }
}

class SizedMovieCard extends StatelessWidget {
  const SizedMovieCard({
    super.key,
    required this.size,
    required this.imageData,
  });

  final Size size;
  final String imageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .29,
      height: size.height * .20,
      decoration: BoxDecoration(
          borderRadius: radios15,
          image: DecorationImage(image: NetworkImage(imageData))),
    );
  }
}
