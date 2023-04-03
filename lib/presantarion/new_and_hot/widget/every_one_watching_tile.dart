import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/new_and_hot/widget/icons.dart';

class EveryOneWatchingTile extends StatelessWidget {
  const EveryOneWatchingTile({
    super.key,
    required this.movieName,
    required this.posterpath,
    required this.description,
  });
  final String movieName;
  final String posterpath;

  final String description;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: size.width * 1,
              height: size.width * .5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(posterpath))),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black.withOpacity(.5),
                  child: const Icon(
                    Icons.volume_off,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        kheight,
        SizedBox(
          width: size.width * .9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * .6,
                child: Text(
                  movieName,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: size.width * .06,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: const [
                    IconsInNewandHot(icon: Icons.telegram, label: 'Share'),
                    IconsInNewandHot(icon: Icons.add, label: "My List"),
                    IconsInNewandHot(icon: Icons.play_arrow, label: "Play")
                  ],
                ),
              ),
            ],
          ),
        ),
        kheight,
        const Text(
          'Coming on Friday',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        kheight20,
        Text(
          'movieName',
          style: TextStyle(
              fontSize: size.width * .04, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(description, style: const TextStyle(color: Colors.grey)),
        kheight20
      ],
    );
  }
}
