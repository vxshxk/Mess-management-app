part of 'mess_bloc.dart';

@freezed
class MessState with _$MessState {
  const factory MessState.initial() = _Initial;
  const factory MessState.rebuild() = Rebuild;
}
