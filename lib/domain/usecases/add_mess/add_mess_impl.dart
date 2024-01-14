import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:mess_app/core/failures/failures.dart';
import 'package:mess_app/data/datasources/mess_remote_data_source.dart';
import 'package:mess_app/data/models/mess_model.dart';
import 'package:mess_app/domain/features/add_mess/add_mess.dart';

class MessDataImpl extends MessData{

  MessDataImpl({required super.mess});


  @override
  Future<Either<Failure, MessModel>> getMessData() async{
    final messCollectionFacade = MessCollectionFacade(mess: mess);
    try{
      final mess = await messCollectionFacade.getMess();
      return mess.fold(
            (error) => left(ServerFailure()),
            (mess) => right(mess),
      );
    }catch(error) {
      return left(ServerFailure());
    }
  }

  @override
  Future<void> setMessData() async{
    final messCollectionFacade= MessCollectionFacade(mess: mess);
    await messCollectionFacade.setMess();
  }
}