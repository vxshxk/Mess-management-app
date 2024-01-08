import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_event.dart';
part 'nav_state.dart';
part 'nav_bloc.freezed.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(const First()) {
    on<FirstPage>((event, emit) {
      emit(const First());
    });

    on<SecondPage>((event, emit) {
      emit(const Second());
    });

    on<ThirdPage>((event, emit) {
      emit(const Third());
    });

  }
}
