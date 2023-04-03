// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix/apllication/dowloads/downloads_bloc.dart' as _i9;
import 'package:netflix/apllication/fast_lagh/fast_lagh_bloc.dart' as _i10;
import 'package:netflix/apllication/hot_and_new/hot_and_new_bloc.dart' as _i11;
import 'package:netflix/apllication/search/search_bloc.dart' as _i12;
import 'package:netflix/domain/downloads/i_downloads_repo.dart' as _i5;
import 'package:netflix/domain/hot_and_new/hot_and_new_service.dart' as _i3;
import 'package:netflix/domain/search/search_service.dart' as _i7;
import 'package:netflix/infrastructure/downloads/downloads_repository.dart'
    as _i6;
import 'package:netflix/infrastructure/hot_and_new/hot_and_new_implimentation.dart'
    as _i4;
import 'package:netflix/infrastructure/search/search_implimentation.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.HotAndNewService>(() => _i4.HotAndNewImplinetation());
    gh.lazySingleton<_i5.IDowloadsRepo>(() => _i6.DownloadRepository());
    gh.lazySingleton<_i7.SearchService>(() => _i8.SearchImpl());
    gh.factory<_i9.DownloadsBloc>(
        () => _i9.DownloadsBloc(gh<_i5.IDowloadsRepo>()));
    gh.factory<_i10.FastLaghBloc>(
        () => _i10.FastLaghBloc(gh<_i5.IDowloadsRepo>()));
    gh.factory<_i11.HotAndNewBloc>(
        () => _i11.HotAndNewBloc(gh<_i3.HotAndNewService>()));
    gh.factory<_i12.SearchBloc>(() => _i12.SearchBloc(
          gh<_i7.SearchService>(),
          gh<_i5.IDowloadsRepo>(),
        ));
    return this;
  }
}
