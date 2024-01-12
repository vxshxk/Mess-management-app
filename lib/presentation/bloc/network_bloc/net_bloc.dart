import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'net_event.dart';
part 'net_state.dart';
part 'net_bloc.freezed.dart';

class NetBloc extends Bloc<NetEvent, NetState> {
  NetBloc() : super(const NetState.connected()) {
    on<On>((event, emit) {
      emit(const Connected());
    });

    on<Off>((event, emit) {
      emit(const NotConnected());
    });
  }
}
