import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/apllication/search/search_bloc.dart';
import 'package:netflix/presantarion/new_and_hot/widget/coming_soon_tile.dart';
import 'package:netflix/core/const_strings.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.loadComingSoon());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
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
          return ListView.builder(
            itemCount: state.comingSoonlist.length,
            itemBuilder: (context, index) {
              final movie = state.comingSoonlist[index];
              return ComingSoonTileWidget(
                  month: 'feb',
                  day: '11',
                  moviename: movie.title ?? 'no Title',
                  posterpath: '$imageApentUrl${movie.posterPath}',
                  id: movie.id.toString(),
                  description: movie.overview ?? 'No Descrption');
            },
          );
        }
      },
    );
  }
}
