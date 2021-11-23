class Album {
  // final int albumId;
  // final int id;
  // final String title;
  // final String url;
  // final String thumbnailUrl;
  final double temp;
  final int pressure;

  Album({
    //required this.albumId,
    required this.temp,
    required this.pressure,
    // required this.id,
    // required this.title,
    // required this.url,
    //required this.thumbnailUrl
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      // albumId: json['albumId'],
      // id: json['id'],
      // title: json['title'],
      // url: json['url'],
      temp: json['main']['temp'],
      pressure: json['main']['pressure'],
      //thumbnailUrl: json['thumbnailUrl']
    );
  }
}
