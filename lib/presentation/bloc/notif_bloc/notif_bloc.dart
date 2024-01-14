import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notif_event.dart';
part 'notif_state.dart';
part 'notif_bloc.freezed.dart';

class NotifBloc extends Bloc<NotifEvent, NotifState> {
  NotifBloc() : super(const NotifState.initial()) {
    on<A>((event, emit) {
      emit(AS());
    });

    on<R>((event, emit) {
      emit(RS());
    });

    on<S>((event, emit) {
      emit(SS());
    });

    on<D>((event, emit) {
      emit(DS());
    });



  }
}
