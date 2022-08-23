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
mixin _$MainAction {
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
    required TResult Function(GetImages value) getImages,
    required TResult Function(AddAction value) addAction,
    required TResult Function(Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetImages value)? getImages,
    TResult Function(AddAction value)? addAction,
    TResult Function(Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages value)? getImages,
    TResult Function(AddAction value)? addAction,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainActionCopyWith<$Res> {
  factory $MainActionCopyWith(
          MainAction value, $Res Function(MainAction) then) =
      _$MainActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainActionCopyWithImpl<$Res> implements $MainActionCopyWith<$Res> {
  _$MainActionCopyWithImpl(this._value, this._then);

  final MainAction _value;
  // ignore: unused_field
  final $Res Function(MainAction) _then;
}

/// @nodoc
abstract class _$$GetImagesCopyWith<$Res> {
  factory _$$GetImagesCopyWith(
          _$GetImages value, $Res Function(_$GetImages) then) =
      __$$GetImagesCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$GetImagesCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$GetImagesCopyWith<$Res> {
  __$$GetImagesCopyWithImpl(
      _$GetImages _value, $Res Function(_$GetImages) _then)
      : super(_value, (v) => _then(v as _$GetImages));

  @override
  _$GetImages get _value => super._value as _$GetImages;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$GetImages(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetImages implements GetImages {
  _$GetImages(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MainAction.getImages(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImages &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$GetImagesCopyWith<_$GetImages> get copyWith =>
      __$$GetImagesCopyWithImpl<_$GetImages>(this, _$identity);

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
    required TResult Function(GetImages value) getImages,
    required TResult Function(AddAction value) addAction,
    required TResult Function(Refresh value) refresh,
  }) {
    return getImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetImages value)? getImages,
    TResult Function(AddAction value)? addAction,
    TResult Function(Refresh value)? refresh,
  }) {
    return getImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages value)? getImages,
    TResult Function(AddAction value)? addAction,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (getImages != null) {
      return getImages(this);
    }
    return orElse();
  }
}

abstract class GetImages implements MainAction {
  factory GetImages(final String query) = _$GetImages;

  String get query;
  @JsonKey(ignore: true)
  _$$GetImagesCopyWith<_$GetImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddActionCopyWith<$Res> {
  factory _$$AddActionCopyWith(
          _$AddAction value, $Res Function(_$AddAction) then) =
      __$$AddActionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddActionCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$AddActionCopyWith<$Res> {
  __$$AddActionCopyWithImpl(
      _$AddAction _value, $Res Function(_$AddAction) _then)
      : super(_value, (v) => _then(v as _$AddAction));

  @override
  _$AddAction get _value => super._value as _$AddAction;
}

/// @nodoc

class _$AddAction implements AddAction {
  _$AddAction();

  @override
  String toString() {
    return 'MainAction.addAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddAction);
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
    required TResult Function(GetImages value) getImages,
    required TResult Function(AddAction value) addAction,
    required TResult Function(Refresh value) refresh,
  }) {
    return addAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetImages value)? getImages,
    TResult Function(AddAction value)? addAction,
    TResult Function(Refresh value)? refresh,
  }) {
    return addAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages value)? getImages,
    TResult Function(AddAction value)? addAction,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (addAction != null) {
      return addAction(this);
    }
    return orElse();
  }
}

abstract class AddAction implements MainAction {
  factory AddAction() = _$AddAction;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, (v) => _then(v as _$Refresh));

  @override
  _$Refresh get _value => super._value as _$Refresh;
}

/// @nodoc

class _$Refresh implements Refresh {
  _$Refresh();

  @override
  String toString() {
    return 'MainAction.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
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
    required TResult Function(GetImages value) getImages,
    required TResult Function(AddAction value) addAction,
    required TResult Function(Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetImages value)? getImages,
    TResult Function(AddAction value)? addAction,
    TResult Function(Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages value)? getImages,
    TResult Function(AddAction value)? addAction,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements MainAction {
  factory Refresh() = _$Refresh;
}
