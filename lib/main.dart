import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/apllication/dowloads/downloads_bloc.dart';
import 'package:netflix/apllication/fast_lagh/fast_lagh_bloc.dart';
import 'package:netflix/apllication/search/search_bloc.dart';
import 'package:netflix/domain/core/di/injectable.dart';
import 'package:netflix/presantarion/main_Page/screen_main_page.dart';
import 'package:netflix/apllication/hot_and_new/hot_and_new_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastLaghBloc>()),
        BlocProvider(create: (context) => getIt<HotAndNewBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: MainPageSc(),
      ),
    );
  }
}
