import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/search/search_bloc.dart';
import 'package:netflix/domain/core/debounce/debounce.dart';
import 'package:netflix/presantarion/search/widget/search_idle.dart';
import 'package:netflix/presantarion/search/widget/search_result.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final debouncer = Debouncer(milliseconds: 1000);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initialize());
    });
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(.4),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                color: Colors.grey),
            style: const TextStyle(
              color: Colors.white,
            ),
            onChanged: (value) {
              if (value.isEmpty) {
                return;
              }
              debouncer.run(() {
                BlocProvider.of<SearchBloc>(context)
                    .add(SearchEvent.searchMovie(movieQuery: value));
              });
            },
          ),
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  return const SearchIdle();
                } else {
                  return const SearchResultScreen();
                }
              },
            ),
          )
        ],
      ),
    )));
  }
}
