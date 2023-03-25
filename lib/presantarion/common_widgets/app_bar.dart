import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.titleText});
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(titleText,
              style:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
          Row(
            children: const [
              Icon(
                Icons.cast,
                color: Colors.white,
              ),
              kwidth,
              Icon(Icons.home, color: Colors.white),
            ],
          )
        ],
      ),
    );
  }
}
