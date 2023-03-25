import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class ScrolBasedAppBar extends StatelessWidget {
  const ScrolBasedAppBar({
    super.key,
    required this.logo,
  });

  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(1),
      width: double.infinity,
      height: 80,
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(logo))),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.cast,
                      size: 40,
                      color: clrWhite,
                    ),
                    kwidth,
                    Icon(
                      Icons.cast,
                      size: 30,
                      color: clrWhite,
                    ),
                  ],
                )
              ],
            ),
          ),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('TV Shows'),
              Text('Movies'),
              Text('Categories'),
            ],
          )
        ],
      ),
    );
  }
}
