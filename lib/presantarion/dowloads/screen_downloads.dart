import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/dowloads/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const_strings.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/custom_widgets.dart';
import 'package:netflix/presantarion/common_widgets/app_bar.dart';

class DownloadsPage extends StatelessWidget {
  DownloadsPage({super.key});
  final listOfWidgets = [
    const SmartDowloads(),
    const Section2(),
    const Section3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(titleText: 'Dowloads')),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.separated(
                  itemBuilder: (context, index) => listOfWidgets[index],
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 40,
                      ),
                  itemCount: listOfWidgets.length))),
    );
  }
}

class SmartDowloads extends StatelessWidget {
  const SmartDowloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight,
        Row(
          children: [
            customIcon(30, Icons.settings, clrWhite),
            const Text('Smart Dowloads')
          ],
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Dowloads for you',
          style: TextStyle(
              color: clrWhite, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We will dowload a personalised selection of \nmovie and shows for you so there's \n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width * .8,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(.3),
                          radius: size.width * .35,
                        ),
                        DowloadsImageWidget(
                          imageList:
                              '$imageApentUrl${state.downloads[0].pasterPath}',
                          imageIndex: 0,
                          rotation: 15,
                          margin: const EdgeInsets.only(left: 200),
                          containerheight: size.width * .54,
                          containerwidth: size.width * .34,
                        ),
                        DowloadsImageWidget(
                          imageList:
                              '$imageApentUrl${state.downloads[1].pasterPath}',
                          imageIndex: 1,
                          rotation: -15,
                          margin: const EdgeInsets.only(right: 200),
                          containerheight: size.width * .54,
                          containerwidth: size.width * .34,
                        ),
                        DowloadsImageWidget(
                          imageList:
                              '$imageApentUrl${state.downloads[2].pasterPath}',
                          imageIndex: 2,
                          rotation: 0,
                          margin: const EdgeInsets.only(top: 10),
                          containerheight: size.width * .59,
                          containerwidth: size.width * .35,
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: buttonColorBlue,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    fontSize: 20, color: clrWhite, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: buttonColorwhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  fontSize: 20, color: clrblack, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class DowloadsImageWidget extends StatelessWidget {
  const DowloadsImageWidget({
    super.key,
    required this.imageList,
    required this.rotation,
    required this.imageIndex,
    required this.margin,
    required this.containerwidth,
    required this.containerheight,
  });

  final String imageList;
  final double rotation;
  final int imageIndex;
  final EdgeInsets margin;
  final double containerwidth;
  final double containerheight;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation * pi / 180,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageList))),
        width: containerwidth,
        height: containerheight,
      ),
    );
  }
}
