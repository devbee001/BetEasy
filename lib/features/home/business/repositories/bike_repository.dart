import 'package:bet_easy/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BikeRepository {
  Future<Either<Failure, BikeRepository>> getBikeDetail();
}
