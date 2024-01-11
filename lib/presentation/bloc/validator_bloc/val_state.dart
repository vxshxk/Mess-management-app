part of 'val_bloc.dart';

@freezed
class ValState with _$ValState {
  const factory ValState.sufficient() = Sufficient;
  const factory ValState.inSufficient() = InSufficient;
}
