abstract class Failure{}

class ServerFailure extends Failure{
  final String? message;
  ServerFailure({this.message});
}

class TypeFailure extends Failure{}