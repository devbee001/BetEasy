import 'package:bet_easy/core/errors/failure.dart';
import 'package:bet_easy/features/home/business/entities/bike_entity.dart';
import 'package:equatable/equatable.dart';

class BikeState extends Equatable {
  final BikeEntity? bikeEntity;
  final Failure? failure;

  const BikeState({this.bikeEntity, this.failure});

  BikeState copyWith({BikeEntity? bikeEntity, Failure? failure}) {
    return BikeState(
        bikeEntity: bikeEntity ?? this.bikeEntity,
        failure: failure ?? this.failure);
  }

  @override
  List<Object?> get props => [bikeEntity, failure];
}
