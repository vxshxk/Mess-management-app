part of 'val_bloc.dart';

@freezed
class ValEvent with _$ValEvent {
  const factory ValEvent.yes() = Yes;
  const factory ValEvent.no() = No;
  const factory ValEvent.soon() = Soon;
}
