import 'package:bet_easy/features/home/business/usecases/get_bike_detail.dart';
import 'package:bet_easy/features/home/data/datasources/bike_local_datasource.dart';
import 'package:bet_easy/features/home/data/repositories/bike_repository_impl.dart';
import 'package:bet_easy/features/home/presentation/notifier/bike_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bikeProvider = StateNotifierProvider<BikeNotifier, BikeState>((ref) {
  return BikeNotifier(const BikeState());
});

class BikeNotifier extends StateNotifier<BikeState> {
  BikeNotifier(super.state);
  void eitherFailureOrBike() async {
    BikeRepositoryImpl repository =
        BikeRepositoryImpl(localDataSource: BikeLocalDataSourceImpl());
    final failureOrBike =
        await GetBikeDetail(bikeRepository: repository).call();
    failureOrBike.fold((failure) {
      state = state.copyWith(failure: failure);
    }, (bikeEntity) {
      state = state.copyWith(bikeEntity: bikeEntity);
    });
  }
}
