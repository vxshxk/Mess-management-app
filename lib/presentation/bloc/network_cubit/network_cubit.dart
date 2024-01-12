import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'network_state.dart';
part 'network_cubit.freezed.dart';

class NetworkCubit extends Cubit<NetworkState> {
  late final StreamSubscription<ConnectivityResult> subscription;

  NetworkCubit() : super(const NetworkState.notConnected()) {
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      checkConnectivity(result);
    });
  }

  void checkConnectivity(ConnectivityResult result) async {
    if (result != ConnectivityResult.none) {
      var isDeviceConnected = await InternetConnectionChecker().hasConnection;
      if (isDeviceConnected) {
        emit(const Connected());
      } else {
        emit(const NotConnected());
      }
    }
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}
