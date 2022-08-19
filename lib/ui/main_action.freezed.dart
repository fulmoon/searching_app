// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainAction<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getImages,
    required TResult Function() addAction,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? getImages,
    TResult Function()? addAction,
    TResult Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getImages,
    TResult Function()? addAction,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImages<T> value) getImages,
    required TResult Function(AddAction<T> value) addAction,
    required TResult Function(Refresh<T> value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetImages<T> value)? getImages,
    TResult Function(AddAction<T> value)? addAction,
    TResult Function(Refresh<T> value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages<T> value)? getImages,
    TResult Function(AddAction<T> value)? addAction,
    TResult Function(Refresh<T> value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainActionCopyWith<T, $Res> {
  factory $MainActionCopyWith(
          MainAction<T> value, $Res Function(MainAction<T>) then) =
      _$MainActionCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$MainActionCopyWithImpl<T, $Res>
    implements $MainActionCopyWith<T, $Res> {
  _$MainActionCopyWithImpl(this._value, this._then);

  final MainAction<T> _value;
  // ignore: unused_field
  final $Res Function(MainAction<T>) _then;
}

/// @nodoc
abstract class _$$GetImagesCopyWith<T, $Res> {
  factory _$$GetImagesCopyWith(
          _$GetImages<T> value, $Res Function(_$GetImages<T>) then) =
      __$$GetImagesCopyWithImpl<T, $Res>;
  $Res call({String query});
}

/// @nodoc
class __$$GetImagesCopyWithImpl<T, $Res>
    extends _$MainActionCopyWithImpl<T, $Res>
    implements _$$GetImagesCopyWith<T, $Res> {
  __$$GetImagesCopyWithImpl(
      _$GetImages<T> _value, $Res Function(_$GetImages<T>) _then)
      : super(_value, (v) => _then(v as _$GetImages<T>));

  @override
  _$GetImages<T> get _value => super._value as _$GetImages<T>;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$GetImages<T>(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetImages<T> implements GetImages<T> {
  const _$GetImages(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MainAction<$T>.getImages(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImages<T> &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$GetImagesCopyWith<T, _$GetImages<T>> get copyWith =>
      __$$GetImagesCopyWithImpl<T, _$GetImages<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getImages,
    required TResult Function() addAction,
    required TResult Function() refresh,
  }) {
    return getImages(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? getImages,
    TResult Function()? addAction,
    TResult Function()? refresh,
  }) {
    return getImages?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getImages,
    TResult Function()? addAction,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImages<T> value) getImages,
    required TResult Function(AddAction<T> value) addAction,
    required TResult Function(Refresh<T> value) refresh,
  }) {
    return getImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetImages<T> value)? getImages,
    TResult Function(AddAction<T> value)? addAction,
    TResult Function(Refresh<T> value)? refresh,
  }) {
    return getImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages<T> value)? getImages,
    TResult Function(AddAction<T> value)? addAction,
    TResult Function(Refresh<T> value)? refresh,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(this);
    }
    return orElse();
  }
}

abstract class GetImages<T> implements MainAction<T> {
  const factory GetImages(final String query) = _$GetImages<T>;

  String get query;
  @JsonKey(ignore: true)
  _$$GetImagesCopyWith<T, _$GetImages<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddActionCopyWith<T, $Res> {
  factory _$$AddActionCopyWith(
          _$AddAction<T> value, $Res Function(_$AddAction<T>) then) =
      __$$AddActionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddActionCopyWithImpl<T, $Res>
    extends _$MainActionCopyWithImpl<T, $Res>
    implements _$$AddActionCopyWith<T, $Res> {
  __$$AddActionCopyWithImpl(
      _$AddAction<T> _value, $Res Function(_$AddAction<T>) _then)
      : super(_value, (v) => _then(v as _$AddAction<T>));

  @override
  _$AddAction<T> get _value => super._value as _$AddAction<T>;
}

/// @nodoc

class _$AddAction<T> implements AddAction<T> {
  const _$AddAction();

  @override
  String toString() {
    return 'MainAction<$T>.addAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddAction<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getImages,
    required TResult Function() addAction,
    required TResult Function() refresh,
  }) {
    return addAction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? getImages,
    TResult Function()? addAction,
    TResult Function()? refresh,
  }) {
    return addAction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getImages,
    TResult Function()? addAction,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (addAction != null) {
      return addAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImages<T> value) getImages,
    required TResult Function(AddAction<T> value) addAction,
    required TResult Function(Refresh<T> value) refresh,
  }) {
    return addAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetImages<T> value)? getImages,
    TResult Function(AddAction<T> value)? addAction,
    TResult Function(Refresh<T> value)? refresh,
  }) {
    return addAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages<T> value)? getImages,
    TResult Function(AddAction<T> value)? addAction,
    TResult Function(Refresh<T> value)? refresh,
    required TResult orElse(),
  }) {
    if (addAction != null) {
      return addAction(this);
    }
    return orElse();
  }
}

abstract class AddAction<T> implements MainAction<T> {
  const factory AddAction() = _$AddAction<T>;
}

/// @nodoc
abstract class _$$RefreshCopyWith<T, $Res> {
  factory _$$RefreshCopyWith(
          _$Refresh<T> value, $Res Function(_$Refresh<T>) then) =
      __$$RefreshCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<T, $Res> extends _$MainActionCopyWithImpl<T, $Res>
    implements _$$RefreshCopyWith<T, $Res> {
  __$$RefreshCopyWithImpl(
      _$Refresh<T> _value, $Res Function(_$Refresh<T>) _then)
      : super(_value, (v) => _then(v as _$Refresh<T>));

  @override
  _$Refresh<T> get _value => super._value as _$Refresh<T>;
}

/// @nodoc

class _$Refresh<T> implements Refresh<T> {
  const _$Refresh();

  @override
  String toString() {
    return 'MainAction<$T>.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getImages,
    required TResult Function() addAction,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? getImages,
    TResult Function()? addAction,
    TResult Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getImages,
    TResult Function()? addAction,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImages<T> value) getImages,
    required TResult Function(AddAction<T> value) addAction,
    required TResult Function(Refresh<T> value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetImages<T> value)? getImages,
    TResult Function(AddAction<T> value)? addAction,
    TResult Function(Refresh<T> value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages<T> value)? getImages,
    TResult Function(AddAction<T> value)? addAction,
    TResult Function(Refresh<T> value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh<T> implements MainAction<T> {
  const factory Refresh() = _$Refresh<T>;
}
