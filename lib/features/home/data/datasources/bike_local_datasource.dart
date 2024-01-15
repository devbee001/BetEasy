import 'package:bet_easy/features/home/data/model/bike_model.dart';

abstract class BikeLocalDataSource {
  Future<BikeModel> getBikeDetail();
}

class BikeLocalDataSourceImpl implements BikeLocalDataSource {
  @override
  Future<BikeModel> getBikeDetail() async {
    try {
      final getBikeDetail = await Future.delayed(
          const Duration(seconds: 60),
          () => {
                'bikeImage': [
                  'assets/images/bike_image.png',
                  'assets/images/bike_image.png',
                  'assets/images/bike_image.png',
                  'assets/images/bike_image.png'
                ],
                'profileImage': 'assets/images/avatar.png',
                'orderReceipt': 'SCP6653728497',
                'postalFee': '2,50 USD',
                'country': 'Sukabunmi, Indonesia',
                'eta': '2h 40m',
                'parcelWeight': '24 kg',
                'inDelivery': 'Bali, Indonesia',
                'transit': 'Jarkarta, Indonesia',
                'from': 'Sukabunmi, Indonesia',
              });
      print("function invoked -$getBikeDetail");

      return BikeModel.fromJson(getBikeDetail);
    } catch (e) {
      throw Exception();
    }
  }
}
