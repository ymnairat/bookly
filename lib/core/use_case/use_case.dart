import 'package:bookly/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type,
    Param> //Type represent the data type that use case sent (Generic). For ex. it T is int T will use as int
{
  Future<Either<Failure, Type>> call(
      [Param param]); // [] represent an optional param
}
