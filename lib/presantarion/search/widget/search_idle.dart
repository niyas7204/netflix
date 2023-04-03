import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const_strings.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/common_widgets/title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const TitleText(text: 'Top Search'),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isloading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error ocured'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is empty'),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.idleList[index];
                    return TopSearchItemTile(
                        imageUrl: '$imageApentUrl${movie.pasterPath}',
                        title: movie.title ?? 'no titlte');
                  },
                  separatorBuilder: (context, index) => kheight20,
                  itemCount: state.idleList.length);
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemTile(
      {super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * .35,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        kwidth,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
              color: clrWhite, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const Icon(
          CupertinoIcons.play_circle,
          color: clrWhite,
          size: 30,
        )
      ],
    );
  }
}
