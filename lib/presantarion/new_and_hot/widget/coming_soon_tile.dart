import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class ComingSoonTileWidget extends StatelessWidget {
  const ComingSoonTileWidget({
    super.key,
    required this.month,
    required this.day,
    required this.moviename,
  });
  final String month;
  final String day;
  final String moviename;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: size.width * .1,
          child: Column(
            children: [
              Text(
                month,
                style:
                    TextStyle(fontSize: size.width * .04, color: Colors.grey),
              ),
              Text(
                day,
                style: TextStyle(fontSize: size.width * .1),
              )
            ],
          ),
        ),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width * .9,
                    height: size.width * .5,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.themoviedb.org/t/p/w250_and_h141_face/33j33midGw49BBxiqlNZeZ6PZ0O.jpg'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black.withOpacity(.5),
                        child: const Icon(
                          Icons.volume_off,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kheight,
              SizedBox(
                width: size.width * .9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      moviename,
                      style: TextStyle(
                          fontSize: size.width * .06,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Column(
                            children: const [
                              Icon(
                                Icons.notifications_none_outlined,
                                color: clrWhite,
                                size: 30,
                              ),
                              Text(
                                'Remind me',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          kwidth,
                          Column(
                            children: const [
                              Icon(
                                Icons.info_outline,
                                color: clrWhite,
                                size: 30,
                              ),
                              Text(
                                'info',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kheight,
              const Text(
                'Coming on Friday',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              kheight20,
              Text(
                'movieName',
                style: TextStyle(
                    fontSize: size.width * .04, fontWeight: FontWeight.bold),
              ),
              kheight,
              const Text(
                  "Contrary to popular belief, Lorem Ipsum is\n not simply random text. It has roots in a piece\n of classical Latin literature from 45 BC,\n making it over 2000 years old",
                  style: TextStyle(color: Colors.grey)),
              kheight20
            ],
          ),
        )
      ],
    );
  }
}
