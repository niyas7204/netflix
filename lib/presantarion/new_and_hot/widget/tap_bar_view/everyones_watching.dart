import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix/presantarion/new_and_hot/widget/every_one_watching_tile.dart';

class EveryOnesWatchingPage extends StatelessWidget {
  const EveryOnesWatchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        EveryOneWatchingTile(movieName: "WisdomVision"),
        EveryOneWatchingTile(movieName: "WisdomVision"),
        EveryOneWatchingTile(movieName: "WisdomVision")
      ],
    );
  }
}
