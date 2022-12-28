// ignore_for_file: empty_constructor_bodies

class Cinema {
  String title;
  String image;
  String location;
  String open;
  String closes;

  Cinema(
      {required this.title,
      required this.image,
      required this.location,
      required this.open,
      required this.closes});
}

class Movie {
  String title;
  String image;
  String rating;
  String description;

  Movie({
    required this.title,
    required this.image,
    required this.rating,
    required this.description,
  });
}
