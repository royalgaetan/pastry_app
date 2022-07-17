class Item {
  final int index;
  final String type;
  final String imgPath;
  final String label;
  final int price;
  final double avgRates;
  final int nbRates;

  Item(
      {required this.index,
      required this.type,
      required this.imgPath,
      required this.label,
      required this.price,
      required this.avgRates,
      required this.nbRates});
}
