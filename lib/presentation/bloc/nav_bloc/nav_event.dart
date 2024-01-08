part of 'nav_bloc.dart';

@freezed
class NavEvent with _$NavEvent {
  const factory NavEvent.firstPage() = FirstPage;
  const factory NavEvent.secondPage() = SecondPage;
  const factory NavEvent.thirdPage() = ThirdPage;
}
