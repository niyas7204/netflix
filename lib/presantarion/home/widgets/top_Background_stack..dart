import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class HeadBackground extends StatelessWidget {
  const HeadBackground({
    super.key,
    required this.headImage,
  });

  final String headImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(headImage))),
        ),
        const Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: HeadBottomButtons(),
        )
      ],
    );
  }
}

class HeadBottomButtons extends StatelessWidget {
  const HeadBottomButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            Icon(
              Icons.add,
              color: clrWhite,
              size: 24,
            ),
            Text('My List')
          ],
        ),
        TextButton.icon(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(clrWhite)),
            onPressed: () {},
            icon: const Icon(
              Icons.play_arrow,
              color: clrblack,
              size: 24,
            ),
            label: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'play',
                style: TextStyle(color: clrblack, fontWeight: FontWeight.bold),
              ),
            )),
        Column(
          children: const [
            Icon(
              Icons.info_outline,
              color: clrWhite,
              size: 24,
            ),
            Text('Info')
          ],
        )
      ],
    );
  }
}
