part of 'notif_bloc.dart';

@freezed
class NotifState with _$NotifState {
  const factory NotifState.initial() = _Initial;
  const factory NotifState.aS() = AS;
  const factory NotifState.sS() = SS;
  const factory NotifState.rS() = RS;
  const factory NotifState.dS() = DS;

}
