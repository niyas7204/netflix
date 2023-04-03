import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presantarion/dowloads/screen_downloads.dart';
import 'package:netflix/presantarion/fast_Laughs.dart/fast_laugh.dart';
import 'package:netflix/presantarion/home/home_page.dart';
import 'package:netflix/presantarion/main_Page/widgets/bottom_navigation.dart';
import 'package:netflix/presantarion/new_and_hot/new_and_hot_page.dart';
import 'package:netflix/presantarion/search/search.dart';

class MainPageSc extends StatelessWidget {
  MainPageSc({super.key});
  final screenPages = [
    const HomePage(),
    const NewAndHotPages(),
    const FastLaughScreen(),
    SearchPage(),
    DownloadsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: pageindexNotifier,
        builder: (context, index, child) {
          return screenPages[index];
        },
      )),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
