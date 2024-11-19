class BoardModel {
  final String image;
  final String title;
  final String subtitle;

  BoardModel(
      {required this.image, required this.title, required this.subtitle});

  static List<BoardModel> bikes = [
    BoardModel(
        image: 'assets/locate.png',
        title: 'Locate',
        subtitle:
            '''Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.'''),
    BoardModel(
      image: 'assets/unlock.png',
      title: 'Unlock',
      subtitle:
          '''Sunt in culpa qui officia deserunt mollit anim idest laborum.''',
    ),
    BoardModel(
      image: 'assets/ride.png',
      title: 'Ride',
      subtitle: '''Culpa qui officia deserunt mollit anim id est laborum.''',
    ),
  ];
}
