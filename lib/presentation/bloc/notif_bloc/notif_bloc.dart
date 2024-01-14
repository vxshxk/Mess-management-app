import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'notif_event.dart';
part 'notif_state.dart';

class NotifBloc extends Bloc<NotifEvent, NotifState> {
  NotifBloc() : super(NotifInitial()) {
    on<A>((event, emit) {
      emit(AS(message: "You haven't applied for any mess yet!"));
    });

    on<R>((event, emit) {
      emit(RS(message: "Applied! Request pending"));
    });

    on<S>((event, emit) {
      emit(SS(message: "Mess change request approved! Your mess has been changed"));
    });

    on<D>((event, emit) {
      emit(DS(message: "Sorry! Your request was deleted"));
    });
  }
}
