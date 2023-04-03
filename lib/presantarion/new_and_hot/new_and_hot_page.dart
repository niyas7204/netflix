import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/presantarion/new_and_hot/widget/app_bar_widget.dart';
import 'package:netflix/presantarion/new_and_hot/widget/tap_bar_view/everyones_watching.dart';
import 'package:netflix/presantarion/new_and_hot/widget/tap_bar_view/coming_soon.dart';

class NewAndHotPages extends StatelessWidget {
  const NewAndHotPages({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: TabAppBarWidget(),
          ),
          body: TabBarView(
              children: [ComingSoonPage(), EveryOnesWatchingPage()])),
    );
  }
}
