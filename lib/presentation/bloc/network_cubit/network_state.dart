part of 'network_cubit.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState.connected() = Connected;
  const factory NetworkState.notConnected() = NotConnected;

}
