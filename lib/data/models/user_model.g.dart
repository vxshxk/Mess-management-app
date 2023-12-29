// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      rollNumber: json['rollNumber'] as String?,
      email: json['email'] as String?,
      mess: json['mess'] as String?,
      messBalance: json['messBalance'] as int?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'rollNumber': instance.rollNumber,
      'email': instance.email,
      'mess': instance.mess,
      'messBalance': instance.messBalance,
    };
