part of 'net_bloc.dart';

@freezed
class NetEvent with _$NetEvent {
  const factory NetEvent.on() = On;
  const factory NetEvent.off() = Off;
}
