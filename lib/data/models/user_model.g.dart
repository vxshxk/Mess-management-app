// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      rollNumber: json['rollNumber'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      mess: json['mess'] as String?,
      messDetails: json['messDetails'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'rollNumber': instance.rollNumber,
      'email': instance.email,
      'role': instance.role,
      'mess': instance.mess,
      'messDetails': instance.messDetails,
    };
