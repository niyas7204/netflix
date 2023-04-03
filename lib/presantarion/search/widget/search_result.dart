import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/search/search_bloc.dart';
import 'package:netflix/core/const_strings.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presantarion/search/widget/movie_card.dart';
import 'package:netflix/presantarion/common_widgets/title.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://www.themoviedb.org/t/p/w220_and_h330_face/x3PIk93PTbxT88ohfeb26L1VpZw.jpg";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const TitleText(text: 'Movies & Tv'),
        kheight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
                childAspectRatio: 1.1 / 1.5,
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: List.generate(
                  20,
                  (index) {
                    final movie = state.searchResultList[index];

                    return MovieCard(
                      imageUrl: "$imageApentUrl${movie.posterPath}",
                    );
                  },
                ));
          },
        ))
      ],
    );
  }
}
