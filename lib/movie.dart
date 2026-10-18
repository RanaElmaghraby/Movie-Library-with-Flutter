
class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

final List<Movie> movies = [
  const Movie(
    title: 'Mission: Impossible',
    genre: 'Action',
    year: 1996,
    rating: 7.2,
    image: 'assets/posters/mission_impossible.jpg',
  ),
  const Movie(
    title: 'Star Wars',
    genre: 'Sci-Fi',
    year: 1977,
    rating: 8.6,
    image: 'assets/posters/star_wars.jpg',
  ),
  const Movie(
    title: 'The Hunger Games',
    genre: 'Action',
    year: 2012,
    rating: 7.2,
    image: 'assets/posters/hunger_games.jpg',
  ),
  const Movie(
    title: 'Spider-Man: Into the Spider-Verse',
    genre: 'Animation / Action',
    year: 2018,
    rating: 8.4,
    image: 'assets/posters/spiderman_into_spider_verse.jpg',
  ),
  const Movie(
    title: 'Raya and the Last Dragon',
    genre: 'Animation',
    year: 2021,
    rating: 7.3,
    image: 'assets/posters/raya.jpg',
  ),
  const Movie(
    title: 'Mulan',
    genre: 'Animation',
    year: 1998,
    rating: 7.7,
    image: 'assets/posters/mulan.jpg',
  ),
  const Movie(
    title: 'A Legend',
    genre: 'Adventure / Fantasy',
    year: 2024,
    rating: 5.1,
    image: 'assets/posters/a_legend.jpg',
  ),
  const Movie(
    title: 'The Bad Guys',
    genre: 'Animation / Comedy',
    year: 2022,
    rating: 6.8,
    image: 'assets/posters/the_bad_guys.jpg',
  ),

];
