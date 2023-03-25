import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/presantarion/home/widgets/top_Background_stack..dart';
import 'package:netflix/presantarion/home/widgets/catogory_list.dart';
import 'package:netflix/presantarion/home/widgets/number_movie_card.dart';
import 'package:netflix/presantarion/home/widgets/scrolling_appbar.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const logo =
        "https://cdn.vox-cdn.com/thumbor/SEEvZdiXcs0CS-YbPj2gm6AJ8qc=/0x0:3151x2048/1400x1400/filters:focal(1575x1024:1576x1025)/cdn.vox-cdn.com/uploads/chorus_asset/file/15844974/netflixlogo.0.0.1466448626.png";
    const headImage =
        "https://www.themoviedb.org/t/p/w220_and_h330_face/i6v77Rcez8BEbsQ2FbUVfzs3yT2.jpg";
    const imageData =
        "https://www.themoviedb.org/t/p/w220_and_h330_face/kuf6dutpsT0vSVehic3EZIqkOBt.jpg";
    return Scaffold(
        body: SafeArea(
            child: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const HeadBackground(headImage: headImage),
                      CatogoryList(
                        size: size,
                        imageData: imageData,
                        text: 'Released in the Past Year',
                      ),
                      CatogoryList(
                        size: size,
                        imageData: imageData,
                        text: 'Trending Now',
                      ),
                      TopTen(
                        size: size,
                        imageData: imageData,
                        text: 'Top 10 TV Shows in India Today',
                      ),
                      CatogoryList(
                        size: size,
                        imageData: imageData,
                        text: 'Tense Drams',
                      ),
                      CatogoryList(
                        size: size,
                        imageData: imageData,
                        text: 'South Indian Cinema',
                      ),
                    ],
                  ),
                ),
                scrollNotifier.value
                    ? const ScrolBasedAppBar(logo: logo)
                    : const SizedBox(),
              ],
            ));
      },
    )));
  }
}
