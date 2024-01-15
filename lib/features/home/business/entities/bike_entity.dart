class BikeEntity {
  final List<String> bikeImage;
  final String profileImage;
  final String orderReceipt;
  final String postalFee;
  final String country;
  final String eta;
  final String parcelWeight;
  final String inDelivery;
  final String transit;
  final String from;
  BikeEntity(
      {required this.bikeImage,
      required this.profileImage,
      required this.orderReceipt,
      required this.postalFee,
      required this.country,
      required this.eta,
      required this.parcelWeight,
      required this.inDelivery,
      required this.transit,
      required this.from});
}
