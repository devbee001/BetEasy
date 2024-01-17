import 'package:bet_easy/features/home/data/datasources/bike_local_datasource.dart';
import 'package:bet_easy/features/home/data/model/bike_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockBikeModel extends Mock implements BikeModel {}

void main() {
  test('getBikeDetail should return a BikeModel', () async {
    final dataSource = BikeLocalDataSourceImpl();

    final bikeModel = await dataSource.getBikeDetail();

    expect(bikeModel, isA<BikeModel>());
    // Add more assertions to verify bikeModel properties if needed
  });
}
