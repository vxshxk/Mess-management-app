import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mess_app/domain/features/network/network.dart';

part 'network_state.dart';
part 'network_cubit.freezed.dart';

class NetworkCubit extends Cubit<NetworkState> {
  NetworkCubit() : super(const NetworkState.initial());


  void checkNetwork() async{
    var result = await NetworkInfoImpl().isConnected;
    if(result){
      emit(const Connected());
    }else{
      emit(const NotConnected());
    }
  }


}
