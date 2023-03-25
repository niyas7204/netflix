import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class TabAppBarWidget extends StatelessWidget {
  const TabAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text("New & Hot",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
      actions: [
        const Icon(Icons.cast),
        kwidth,
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        )
      ],
      bottom: TabBar(
          isScrollable: true,
          labelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          indicator: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          unselectedLabelColor: Colors.white,
          labelColor: Colors.black,
          indicatorColor: const Color.fromARGB(255, 243, 33, 33),
          tabs: const [
            Tab(
              text: "🍿 Coming Soon",
            ),
            Tab(
              text: "👀 Everyone's Watching",
            ),
          ]),
    );
  }
}
