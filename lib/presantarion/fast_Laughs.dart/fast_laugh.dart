import 'package:flutter/material.dart';
import 'package:netflix/presantarion/fast_Laughs.dart/widgets/list_pages.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return VideoListItems(
              index: index,
            );
          }),
        ),
      ),
    );
  }
}