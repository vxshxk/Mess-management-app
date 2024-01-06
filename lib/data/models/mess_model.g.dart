// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mess_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessModelAdapter extends TypeAdapter<MessModel> {
  @override
  final int typeId = 2;

  @override
  MessModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessModel(
      currentSize: fields[0] as String?,
      name: fields[1] as String?,
      size: fields[2] as String?,
      email: fields[3] as String?,
      messMenu: (fields[4] as Map?)?.cast<String, dynamic>(),
      members: (fields[5] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, MessModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.currentSize)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.size)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.messMenu)
      ..writeByte(5)
      ..write(obj.members);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MessModelImplAdapter extends TypeAdapter<_$MessModelImpl> {
  @override
  final int typeId = 5;

  @override
  _$MessModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MessModelImpl(
      currentSize: fields[0] as String?,
      name: fields[1] as String?,
      size: fields[2] as String?,
      email: fields[3] as String?,
      messMenu: (fields[4] as Map?)?.cast<String, dynamic>(),
      members: (fields[5] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$MessModelImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.currentSize)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.size)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.messMenu)
      ..writeByte(5)
      ..write(obj.members);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessModelImpl _$$MessModelImplFromJson(Map<String, dynamic> json) =>
    _$MessModelImpl(
      currentSize: json['currentSize'] as String?,
      name: json['name'] as String?,
      size: json['size'] as String?,
      email: json['email'] as String?,
      messMenu: json['messMenu'] as Map<String, dynamic>?,
      members:
          (json['members'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MessModelImplToJson(_$MessModelImpl instance) =>
    <String, dynamic>{
      'currentSize': instance.currentSize,
      'name': instance.name,
      'size': instance.size,
      'email': instance.email,
      'messMenu': instance.messMenu,
      'members': instance.members,
    };
