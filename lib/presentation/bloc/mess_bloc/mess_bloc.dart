import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mess_event.dart';
part 'mess_state.dart';
part 'mess_bloc.freezed.dart';

class MessBloc extends Bloc<MessEvent, MessState> {
  MessBloc() : super(const MessState.initial()) {
    on<DataChanged>((event, emit) {
      emit(const Updated());
    });

  }
}
