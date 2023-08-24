class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.coverUrl,
    required this.description,
    required this.url,
  });

  static List<Song> songs = [
    Song(
      coverUrl: 'assets/images/glass.jpg',
      description: 'Glass',
      title: "Glass",
      url: 'assets/music/glass.mp3',
    ),
    Song(
      coverUrl: 'assets/images/illusions.jpg',
      description: 'Illusions',
      title: "Illusions",
      url: 'assets/music/illusions.mp3',
    ),
    Song(
      coverUrl: 'assets/images/pray.jpg',
      description: 'Pray',
      title: "Pray",
      url: 'assets/music/pray.mp3',
    ),
  ];
}
