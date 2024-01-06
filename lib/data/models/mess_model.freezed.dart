// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessModel _$MessModelFromJson(Map<String, dynamic> json) {
  return _MessModel.fromJson(json);
}

/// @nodoc
mixin _$MessModel {
  @HiveField(0)
  String? get currentSize => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get size => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  Map<String, dynamic>? get messMenu => throw _privateConstructorUsedError;
  @HiveField(5)
  List<String>? get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessModelCopyWith<MessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessModelCopyWith<$Res> {
  factory $MessModelCopyWith(MessModel value, $Res Function(MessModel) then) =
      _$MessModelCopyWithImpl<$Res, MessModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? currentSize,
      @HiveField(1) String? name,
      @HiveField(2) String? size,
      @HiveField(3) String? email,
      @HiveField(4) Map<String, dynamic>? messMenu,
      @HiveField(5) List<String>? members});
}

/// @nodoc
class _$MessModelCopyWithImpl<$Res, $Val extends MessModel>
    implements $MessModelCopyWith<$Res> {
  _$MessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSize = freezed,
    Object? name = freezed,
    Object? size = freezed,
    Object? email = freezed,
    Object? messMenu = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      currentSize: freezed == currentSize
          ? _value.currentSize
          : currentSize // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      messMenu: freezed == messMenu
          ? _value.messMenu
          : messMenu // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessModelImplCopyWith<$Res>
    implements $MessModelCopyWith<$Res> {
  factory _$$MessModelImplCopyWith(
          _$MessModelImpl value, $Res Function(_$MessModelImpl) then) =
      __$$MessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? currentSize,
      @HiveField(1) String? name,
      @HiveField(2) String? size,
      @HiveField(3) String? email,
      @HiveField(4) Map<String, dynamic>? messMenu,
      @HiveField(5) List<String>? members});
}

/// @nodoc
class __$$MessModelImplCopyWithImpl<$Res>
    extends _$MessModelCopyWithImpl<$Res, _$MessModelImpl>
    implements _$$MessModelImplCopyWith<$Res> {
  __$$MessModelImplCopyWithImpl(
      _$MessModelImpl _value, $Res Function(_$MessModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSize = freezed,
    Object? name = freezed,
    Object? size = freezed,
    Object? email = freezed,
    Object? messMenu = freezed,
    Object? members = freezed,
  }) {
    return _then(_$MessModelImpl(
      currentSize: freezed == currentSize
          ? _value.currentSize
          : currentSize // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      messMenu: freezed == messMenu
          ? _value._messMenu
          : messMenu // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5)
class _$MessModelImpl extends _MessModel {
  _$MessModelImpl(
      {@HiveField(0) required this.currentSize,
      @HiveField(1) required this.name,
      @HiveField(2) required this.size,
      @HiveField(3) required this.email,
      @HiveField(4) final Map<String, dynamic>? messMenu,
      @HiveField(5) final List<String>? members})
      : _messMenu = messMenu,
        _members = members,
        super._();

  factory _$MessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? currentSize;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? size;
  @override
  @HiveField(3)
  final String? email;
  final Map<String, dynamic>? _messMenu;
  @override
  @HiveField(4)
  Map<String, dynamic>? get messMenu {
    final value = _messMenu;
    if (value == null) return null;
    if (_messMenu is EqualUnmodifiableMapView) return _messMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _members;
  @override
  @HiveField(5)
  List<String>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MessModel(currentSize: $currentSize, name: $name, size: $size, email: $email, messMenu: $messMenu, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessModelImpl &&
            (identical(other.currentSize, currentSize) ||
                other.currentSize == currentSize) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._messMenu, _messMenu) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentSize,
      name,
      size,
      email,
      const DeepCollectionEquality().hash(_messMenu),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessModelImplCopyWith<_$MessModelImpl> get copyWith =>
      __$$MessModelImplCopyWithImpl<_$MessModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessModelImplToJson(
      this,
    );
  }
}

abstract class _MessModel extends MessModel {
  factory _MessModel(
      {@HiveField(0) required final String? currentSize,
      @HiveField(1) required final String? name,
      @HiveField(2) required final String? size,
      @HiveField(3) required final String? email,
      @HiveField(4) final Map<String, dynamic>? messMenu,
      @HiveField(5) final List<String>? members}) = _$MessModelImpl;
  _MessModel._() : super._();

  factory _MessModel.fromJson(Map<String, dynamic> json) =
      _$MessModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get currentSize;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get size;
  @override
  @HiveField(3)
  String? get email;
  @override
  @HiveField(4)
  Map<String, dynamic>? get messMenu;
  @override
  @HiveField(5)
  List<String>? get members;
  @override
  @JsonKey(ignore: true)
  _$$MessModelImplCopyWith<_$MessModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
