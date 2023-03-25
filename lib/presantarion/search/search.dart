import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/search/widget/search_idle.dart';
import 'package:netflix/presantarion/search/widget/search_result.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(.4),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                color: Colors.grey),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const Expanded(child: SearchResultScreen())
        ],
      ),
    )));
  }
}
