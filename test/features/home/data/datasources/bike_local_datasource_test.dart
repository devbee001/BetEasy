import 'package:bet_easy/features/home/data/datasources/bike_local_datasource.dart';
import 'package:bet_easy/features/home/data/model/bike_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Bike Data Fetched Successfully', () async {
    // Arrange
    final BikeLocalDataSourceImpl instance = BikeLocalDataSourceImpl();
    // Act;
    final response = await instance.getBikeDetail(mins: 0.05);
    // Assert
    expect(response, isA<BikeModel>());
  });

  ///The class does not need to be mocked has the function doesn't depend on any external services or APIs
}
