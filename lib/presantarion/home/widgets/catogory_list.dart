import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/const_strings.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/common_widgets/title.dart';
import 'package:netflix/apllication/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/presantarion/search/widget/movie_card.dart';

class CatogoryList extends StatelessWidget {
  const CatogoryList({
    super.key,
    required this.text,
    required this.size,
  });

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.loadComingSoon());
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(text: text),
        kheight,
        BlocBuilder<HotAndNewBloc, HotAndNewState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('is error'),
              );
            } else if (state.comingSoonlist.isEmpty) {
              return const Center(
                child: Text('is empty'),
              );
            } else {
              return LimitedBox(
                maxHeight: size.height * .20,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.comingSoonlist.length,
                    itemBuilder: (context, index) {
                      final movie = state.comingSoonlist[index];
                      return SizedMovieCard(
                          size: size,
                          imageData: '$imageApentUrl${movie.posterPath}');
                    }),
              );
            }
          },
        ),
      ],
    );
  }
}

class SizedMovieCard extends StatelessWidget {
  const SizedMovieCard({
    super.key,
    required this.size,
    required this.imageData,
  });

  final Size size;
  final String imageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .29,
      height: size.height * .20,
      decoration: BoxDecoration(
          borderRadius: radios15,
          image: DecorationImage(image: NetworkImage(imageData))),
    );
  }
}
