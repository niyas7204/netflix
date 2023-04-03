import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/core/const_strings.dart';
import 'package:netflix/presantarion/new_and_hot/widget/every_one_watching_tile.dart';

class EveryOnesWatchingPage extends StatelessWidget {
  const EveryOnesWatchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.everyOneWatchingSoon());
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
        } else if (state.everyOneisWatchinglist.isEmpty) {
          return const Center(
            child: Text('is empty'),
          );
        } else {
          return ListView.builder(
            itemCount: state.everyOneisWatchinglist.length,
            itemBuilder: (context, index) {
              final movie = state.comingSoonlist[index];
              return EveryOneWatchingTile(
                  movieName: movie.title ?? 'no title',
                  posterpath: '$imageApentUrl${movie.posterPath}',
                  description: movie.overview ?? 'no description');
            },
          );
        }
      },
    );
  }
}
