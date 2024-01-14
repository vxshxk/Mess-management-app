part of 'notif_bloc.dart';

@immutable
abstract class NotifState {}
class NotifInitial extends NotifState {}

class AS extends NotifState {
  String? message;
  AS({required this.message});
}

class RS extends NotifState {
  String? message;
  RS({required this.message});
}

class SS extends NotifState {
  String? message;
  SS({required this.message});
}
class DS extends NotifState {
  String? message;
  DS({required this.message});
}

