import 'package:bet_easy/features/home/business/entities/bike_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bike_model.g.dart';

@JsonSerializable()
class BikeModel extends BikeEntity {
  BikeModel({
    required List<String> bikeImage,
    required String profileImage,
    required String orderReceipt,
    required num postalFee,
    required String country,
    required String eta,
    required num parcelWeight,
    required String inDelivery,
    required String transit,
    required String from,
  }) : super(
            bikeImage: bikeImage,
            profileImage: profileImage,
            orderReceipt: orderReceipt,
            postalFee: postalFee,
            country: country,
            eta: eta,
            parcelWeight: parcelWeight,
            inDelivery: inDelivery,
            transit: transit,
            from: from);

  factory BikeModel.fromJson(Map<String, dynamic> json) =>
      _$BikeModelFromJson(json);
  Map<String, dynamic> toJson() => _$BikeModelToJson(this);
}
