import 'package:bet_easy/core/errors/failure.dart';
import 'package:bet_easy/features/home/business/entities/bike_entity.dart';
import 'package:dartz/dartz.dart';

abstract class BikeRepository {
  Future<Either<Failure, BikeEntity>> getBikeDetail();
}
