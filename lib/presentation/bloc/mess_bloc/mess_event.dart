part of 'mess_bloc.dart';

@freezed
class MessEvent with _$MessEvent {
  const factory MessEvent.dataChanged() = DataChanged;
}
