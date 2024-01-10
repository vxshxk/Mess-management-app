part of 'edit_bloc.dart';

@freezed
class EditState with _$EditState {
  const factory EditState.initial() = Initial;
  const factory EditState.edit() = Edit;
}
