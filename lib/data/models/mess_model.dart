import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'mess_model.freezed.dart';
part 'mess_model.g.dart';


@freezed
@HiveType(typeId: 2)
class MessModel extends HiveObject with _$MessModel {

  MessModel._();

  @HiveType(typeId: 5)
  factory MessModel({
    @HiveField(0)
    required String? currentSize,

    @HiveField(1)
    required String? name,

    @HiveField(2)
    required String? size,

    @HiveField(3)
    required String? email,

    @HiveField(4)
    Map<String, dynamic>? messMenu

  }) = _MessModel;

  factory MessModel.fromJson(Map<String, dynamic> json) => _$MessModelFromJson(json);
}

