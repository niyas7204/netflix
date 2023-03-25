import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class VideoListItems extends StatelessWidget {
  final int index;
  const VideoListItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final imgUrl =
        "https://www.themoviedb.org/t/p/w220_and_h330_face/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg";
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(.5),
                radius: 30,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_sharp,
                      size: 30,
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imgUrl),
                      radius: 25,
                    ),
                  ),
                  const ActionIconsWidget(
                      icon: Icons.emoji_emotions, label: 'LOL'),
                  const ActionIconsWidget(icon: Icons.add, label: 'My List'),
                  const ActionIconsWidget(icon: Icons.share, label: 'Share'),
                  const ActionIconsWidget(
                      icon: Icons.play_arrow_sharp, label: 'Play')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class ActionIconsWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  const ActionIconsWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: clrWhite,
            size: 30,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
