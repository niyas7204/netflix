// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_lagh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaghEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int id) likedVideos,
    required TResult Function(int id) unlikedVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(int id)? likedVideos,
    TResult? Function(int id)? unlikedVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int id)? likedVideos,
    TResult Function(int id)? unlikedVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(LikedVideos value) likedVideos,
    required TResult Function(UnLikedVideos value) unlikedVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(LikedVideos value)? likedVideos,
    TResult? Function(UnLikedVideos value)? unlikedVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(LikedVideos value)? likedVideos,
    TResult Function(UnLikedVideos value)? unlikedVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaghEventCopyWith<$Res> {
  factory $FastLaghEventCopyWith(
          FastLaghEvent value, $Res Function(FastLaghEvent) then) =
      _$FastLaghEventCopyWithImpl<$Res, FastLaghEvent>;
}

/// @nodoc
class _$FastLaghEventCopyWithImpl<$Res, $Val extends FastLaghEvent>
    implements $FastLaghEventCopyWith<$Res> {
  _$FastLaghEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$FastLaghEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'FastLaghEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int id) likedVideos,
    required TResult Function(int id) unlikedVideos,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(int id)? likedVideos,
    TResult? Function(int id)? unlikedVideos,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int id)? likedVideos,
    TResult Function(int id)? unlikedVideos,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(LikedVideos value) likedVideos,
    required TResult Function(UnLikedVideos value) unlikedVideos,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(LikedVideos value)? likedVideos,
    TResult? Function(UnLikedVideos value)? unlikedVideos,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(LikedVideos value)? likedVideos,
    TResult Function(UnLikedVideos value)? unlikedVideos,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements FastLaghEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$$LikedVideosCopyWith<$Res> {
  factory _$$LikedVideosCopyWith(
          _$LikedVideos value, $Res Function(_$LikedVideos) then) =
      __$$LikedVideosCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LikedVideosCopyWithImpl<$Res>
    extends _$FastLaghEventCopyWithImpl<$Res, _$LikedVideos>
    implements _$$LikedVideosCopyWith<$Res> {
  __$$LikedVideosCopyWithImpl(
      _$LikedVideos _value, $Res Function(_$LikedVideos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LikedVideos(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikedVideos implements LikedVideos {
  const _$LikedVideos({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastLaghEvent.likedVideos(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedVideos &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedVideosCopyWith<_$LikedVideos> get copyWith =>
      __$$LikedVideosCopyWithImpl<_$LikedVideos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int id) likedVideos,
    required TResult Function(int id) unlikedVideos,
  }) {
    return likedVideos(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(int id)? likedVideos,
    TResult? Function(int id)? unlikedVideos,
  }) {
    return likedVideos?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int id)? likedVideos,
    TResult Function(int id)? unlikedVideos,
    required TResult orElse(),
  }) {
    if (likedVideos != null) {
      return likedVideos(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(LikedVideos value) likedVideos,
    required TResult Function(UnLikedVideos value) unlikedVideos,
  }) {
    return likedVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(LikedVideos value)? likedVideos,
    TResult? Function(UnLikedVideos value)? unlikedVideos,
  }) {
    return likedVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(LikedVideos value)? likedVideos,
    TResult Function(UnLikedVideos value)? unlikedVideos,
    required TResult orElse(),
  }) {
    if (likedVideos != null) {
      return likedVideos(this);
    }
    return orElse();
  }
}

abstract class LikedVideos implements FastLaghEvent {
  const factory LikedVideos({required final int id}) = _$LikedVideos;

  int get id;
  @JsonKey(ignore: true)
  _$$LikedVideosCopyWith<_$LikedVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnLikedVideosCopyWith<$Res> {
  factory _$$UnLikedVideosCopyWith(
          _$UnLikedVideos value, $Res Function(_$UnLikedVideos) then) =
      __$$UnLikedVideosCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UnLikedVideosCopyWithImpl<$Res>
    extends _$FastLaghEventCopyWithImpl<$Res, _$UnLikedVideos>
    implements _$$UnLikedVideosCopyWith<$Res> {
  __$$UnLikedVideosCopyWithImpl(
      _$UnLikedVideos _value, $Res Function(_$UnLikedVideos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UnLikedVideos(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnLikedVideos implements UnLikedVideos {
  const _$UnLikedVideos({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastLaghEvent.unlikedVideos(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnLikedVideos &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnLikedVideosCopyWith<_$UnLikedVideos> get copyWith =>
      __$$UnLikedVideosCopyWithImpl<_$UnLikedVideos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int id) likedVideos,
    required TResult Function(int id) unlikedVideos,
  }) {
    return unlikedVideos(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(int id)? likedVideos,
    TResult? Function(int id)? unlikedVideos,
  }) {
    return unlikedVideos?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int id)? likedVideos,
    TResult Function(int id)? unlikedVideos,
    required TResult orElse(),
  }) {
    if (unlikedVideos != null) {
      return unlikedVideos(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(LikedVideos value) likedVideos,
    required TResult Function(UnLikedVideos value) unlikedVideos,
  }) {
    return unlikedVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(LikedVideos value)? likedVideos,
    TResult? Function(UnLikedVideos value)? unlikedVideos,
  }) {
    return unlikedVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(LikedVideos value)? likedVideos,
    TResult Function(UnLikedVideos value)? unlikedVideos,
    required TResult orElse(),
  }) {
    if (unlikedVideos != null) {
      return unlikedVideos(this);
    }
    return orElse();
  }
}

abstract class UnLikedVideos implements FastLaghEvent {
  const factory UnLikedVideos({required final int id}) = _$UnLikedVideos;

  int get id;
  @JsonKey(ignore: true)
  _$$UnLikedVideosCopyWith<_$UnLikedVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FastLaghState {
  List<Downloads> get videoList => throw _privateConstructorUsedError;
  List<int> get likedVideos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaghStateCopyWith<FastLaghState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaghStateCopyWith<$Res> {
  factory $FastLaghStateCopyWith(
          FastLaghState value, $Res Function(FastLaghState) then) =
      _$FastLaghStateCopyWithImpl<$Res, FastLaghState>;
  @useResult
  $Res call(
      {List<Downloads> videoList,
      List<int> likedVideos,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$FastLaghStateCopyWithImpl<$Res, $Val extends FastLaghState>
    implements $FastLaghStateCopyWith<$Res> {
  _$FastLaghStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? likedVideos = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      likedVideos: null == likedVideos
          ? _value.likedVideos
          : likedVideos // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FastLaghStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Downloads> videoList,
      List<int> likedVideos,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FastLaghStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? likedVideos = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      likedVideos: null == likedVideos
          ? _value._likedVideos
          : likedVideos // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Downloads> videoList,
      final List<int> likedVideos = const [],
      required this.isLoading,
      required this.isError})
      : _videoList = videoList,
        _likedVideos = likedVideos;

  final List<Downloads> _videoList;
  @override
  List<Downloads> get videoList {
    if (_videoList is EqualUnmodifiableListView) return _videoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

  final List<int> _likedVideos;
  @override
  @JsonKey()
  List<int> get likedVideos {
    if (_likedVideos is EqualUnmodifiableListView) return _likedVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedVideos);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FastLaghState(videoList: $videoList, likedVideos: $likedVideos, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList) &&
            const DeepCollectionEquality()
                .equals(other._likedVideos, _likedVideos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videoList),
      const DeepCollectionEquality().hash(_likedVideos),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements FastLaghState {
  const factory _Initial(
      {required final List<Downloads> videoList,
      final List<int> likedVideos,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  List<Downloads> get videoList;
  @override
  List<int> get likedVideos;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
