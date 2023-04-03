import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/dowloads/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const_strings.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/common_widgets/title.dart';

class TopTen extends StatelessWidget {
  const TopTen({
    super.key,
    required this.size,
    required this.text,
  });

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(text: text),
        kheight,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.downloads.isEmpty) {
              return const Center(
                child: Text('is empty'),
              );
            } else {
              return LimitedBox(
                  maxHeight: size.height * .20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final movie = state.downloads[index];
                      return NumberedCard(
                          size: size,
                          image: '$imageApentUrl${movie.pasterPath}',
                          index: index);
                    },
                  ));
            }
          },
        ),
      ],
    );
  }
}

class NumberedCard extends StatelessWidget {
  const NumberedCard(
      {super.key,
      required this.size,
      required this.image,
      required this.index});
  final Size size;
  final int index;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: size.height * .20,
              width: 25,
            ),
            Container(
              width: size.width * .29,
              height: size.height * .20,
              decoration: BoxDecoration(
                  borderRadius: radios15,
                  image: DecorationImage(image: NetworkImage(image))),
            ),
          ],
        ),
        Positioned(
            left: -10,
            bottom: -15,
            child: BorderedText(
                strokeWidth: 2,
                strokeColor: clrWhite,
                child: Text(
                  index.toString(),
                  style: const TextStyle(
                      fontSize: 120,
                      color: Colors.black,
                      fontFamily: AutofillHints.birthdayDay),
                )))
      ],
    );
  }
}
