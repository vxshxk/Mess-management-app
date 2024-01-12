part of 'net_bloc.dart';

@freezed
class NetState with _$NetState {
  const factory NetState.connected() = Connected;
  const factory NetState.notConnected() = NotConnected;
}
