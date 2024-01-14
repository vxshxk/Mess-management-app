import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'val_event.dart';
part 'val_state.dart';
part 'val_bloc.freezed.dart';

class ValBloc extends Bloc<ValEvent, ValState> {
  ValBloc() : super(const ValState.sufficient()) {
    on<Yes>((event, emit) {
      emit(const Sufficient());
    });

    on<No>((event, emit) {
      emit(const InSufficient());
    });

    on<Soon>((event, emit) {
      emit(const SlightlySufficient());
    });
  }
}
