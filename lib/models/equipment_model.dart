class Equipment {
  final int id;
  final String equipmentName;
  final String equipmentDiscription;
  final String equipmentImage;
  final int numberOfMins;
  final double numberOfBurn;
  final bool isHandedOver;

  Equipment({
    required this.id,
    required this.equipmentName,
    required this.equipmentDiscription,
    required this.equipmentImage,
    required this.numberOfMins,
    required this.numberOfBurn,
    required this.isHandedOver,
  });
}
