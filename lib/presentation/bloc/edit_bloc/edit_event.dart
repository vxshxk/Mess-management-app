part of 'edit_bloc.dart';

@freezed
class EditEvent with _$EditEvent {
  const factory EditEvent.editDetails() = EditDetails;
  const factory EditEvent.unEditDetails() = UnEditDetails;
}
