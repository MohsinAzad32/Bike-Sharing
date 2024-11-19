class Product {
  final String image;
  final String distance;
  final String nameofbike;
  final String numberofavialablebike;

  Product({
    required this.distance,
    required this.image,
    required this.nameofbike,
    required this.numberofavialablebike,
  });

  static List<Product> products = [
    Product(
      distance: '170 m',
      image: 'assets/Bitmap.png',
      nameofbike: 'Haibike Sduro FullSeven',
      numberofavialablebike: '1 Available',
    ),
    Product(
      distance: '130 m',
      image: 'assets/Bitmap.png',
      nameofbike: 'Haibike Sduro ',
      numberofavialablebike: '4 Available',
    ),
    Product(
      distance: '100 m',
      image: 'assets/Bitmap.png',
      nameofbike: 'Haibike  FullSeven',
      numberofavialablebike: '4 Available',
    ),
    Product(
      distance: '150 m',
      image: 'assets/Bitmap.png',
      nameofbike: ' FullSeven',
      numberofavialablebike: '0 Available',
    ),
    Product(
      distance: '80 m',
      image: 'assets/Bitmap.png',
      nameofbike: 'Haibike Sduro FullSeven',
      numberofavialablebike: '10 Available',
    ),
  ];
}
