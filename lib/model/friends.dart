class Friends {
  final String image;
  final String name;
  bool issent;

  Friends({
    required this.name,
    required this.image,
    this.issent = false,
  });

  static List<Friends> friends = [
    Friends(
      name: 'Mohsin Khan',
      image: 'assets/me.jpg',
    ),
    Friends(
      name: 'Faizan Akram',
      image: 'assets/me.jpg',
    ),
    Friends(
      name: 'Zeeshan Akram',
      image: 'assets/me.jpg',
    ),
    Friends(
      name: 'Aqib Javed',
      image: 'assets/me.jpg',
    ),
    Friends(
      name: 'Ahsan Khan',
      image: 'assets/me.jpg',
    ),
  ];
}
