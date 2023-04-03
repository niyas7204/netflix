import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/fast_lagh/fast_lagh_bloc.dart';
import 'package:netflix/presantarion/fast_Laughs.dart/widgets/list_pages.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaghBloc>(context)
          .add(const FastLaghEvent.initialized());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaghBloc, FastLaghState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error '),
              );
            } else if (state.videoList.isEmpty) {
              return const Center(
                child: Text('No video found '),
              );
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videoList.length, (index) {
                  return VideoListItemInheritedWidget(
                      key: Key(index.toString()),
                      childWidget: VideoListItems(index: index),
                      movieData: state.videoList[index]);
                }),
              );
            }
          },
        ),
      ),
    );
  }
}
