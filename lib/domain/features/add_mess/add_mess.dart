import 'package:dartz/dartz.dart';
import 'package:mess_app/core/failures/failures.dart';
import 'package:mess_app/data/models/mess_model.dart';

abstract class MessData{
  final MessModel? mess;
  MessData({required this.mess});

  Future<Either<Failure, MessModel>> getMessData();

  Future<void> setMessData();
}