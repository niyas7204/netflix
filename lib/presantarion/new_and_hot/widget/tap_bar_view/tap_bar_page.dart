import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/new_and_hot/widget/coming_soon_tile.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        kheight,
        ComingSoonTileWidget(
            month: 'FEb', day: 11.toString(), moviename: 'WisdomVision'),
        ComingSoonTileWidget(
            month: 'FEb', day: 11.toString(), moviename: 'WisdomVision'),
        ComingSoonTileWidget(
            month: 'FEb', day: 11.toString(), moviename: 'WisdomVision')
      ],
    );
  }
}
