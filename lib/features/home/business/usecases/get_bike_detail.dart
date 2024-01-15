import 'package:bet_easy/core/errors/failure.dart';
import 'package:bet_easy/features/home/business/entities/bike_entity.dart';
import 'package:bet_easy/features/home/business/repositories/bike_repository.dart';
import 'package:dartz/dartz.dart';

class GetBikeDetail {
  final BikeRepository bikeRepository;
  GetBikeDetail({required this.bikeRepository});

  Future<Either<Failure, BikeEntity>> call() async {
    return await bikeRepository.getBikeDetail();
  }
}
