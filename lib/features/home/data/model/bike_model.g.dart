// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bike_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BikeModel _$BikeModelFromJson(Map<String, dynamic> json) => BikeModel(
      bikeImage:
          (json['bikeImage'] as List<dynamic>).map((e) => e as String).toList(),
      profileImage: json['profileImage'] as String,
      orderReceipt: json['orderReceipt'] as String,
      postalFee: json['postalFee'] as String,
      country: json['country'] as String,
      eta: json['eta'] as String,
      parcelWeight: json['parcelWeight'] as String,
      inDelivery: json['inDelivery'] as String,
      transit: json['transit'] as String,
      from: json['from'] as String,
    );

Map<String, dynamic> _$BikeModelToJson(BikeModel instance) => <String, dynamic>{
      'bikeImage': instance.bikeImage,
      'profileImage': instance.profileImage,
      'orderReceipt': instance.orderReceipt,
      'postalFee': instance.postalFee,
      'country': instance.country,
      'eta': instance.eta,
      'parcelWeight': instance.parcelWeight,
      'inDelivery': instance.inDelivery,
      'transit': instance.transit,
      'from': instance.from,
    };
