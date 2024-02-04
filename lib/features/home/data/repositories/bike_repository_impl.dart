import 'package:bet_easy/core/errors/failure.dart';
import 'package:bet_easy/features/home/business/repositories/bike_repository.dart';
import 'package:bet_easy/features/home/data/datasources/bike_local_datasource.dart';
import 'package:bet_easy/features/home/data/model/bike_model.dart';
import 'package:dartz/dartz.dart';

class BikeRepositoryImpl implements BikeRepository {
  final BikeLocalDataSource localDataSource;
  BikeRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, BikeModel>> getBikeDetail() async {
    try {
      final getBikeDetail = await localDataSource.getBikeDetail(mins: 2);
      return Right(getBikeDetail);
    } on Exception {
      return const Left(Failure(errorMessage: 'It is Not You,It is us'));
    }
  }
}
