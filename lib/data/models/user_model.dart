import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';


@freezed
@HiveType(typeId: 0)
class UserModel extends HiveObject with _$UserModel {

  UserModel._();

  @HiveType(typeId: 1)
  factory UserModel({
    @HiveField(0)
    required String? uid,

    @HiveField(1)
    required String? name,

    @HiveField(2)
    required String? rollNumber,

    @HiveField(3)
    required String? email,

    @HiveField(4)
    required String? role,

    @HiveField(5)
    String? mess,

    @HiveField(6)
    int? messBalance,

  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

}

