import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_event.dart';
part 'edit_state.dart';
part 'edit_bloc.freezed.dart';

class EditBloc extends Bloc<EditEvent, EditState> {
  EditBloc() : super(const EditState.initial()) {
    on<EditDetails>((event, emit) {
      emit(const Edit());
    });

    on<UnEditDetails>((event, emit) {
      emit(const Initial());
    });
  }
}
