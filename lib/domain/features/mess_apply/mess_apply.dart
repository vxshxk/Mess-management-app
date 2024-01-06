import 'package:dartz/dartz.dart';

import '../../../core/failures/failures.dart';
import '../../../data/models/mess_model.dart';
import '../../../data/models/user_model.dart';

abstract class MessApply{
  final MessModel? mess;
  final UserModel? user;
  MessApply({required this.user, required this.mess});

  Future<void> setMessToUser();
  Future<void> applyMessChange(int topUp);
}