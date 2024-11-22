// Movie Recommendation System

// Explanation:

// 1.	Variables:
// ○	genre: declare a variable called genre to Stores the user's favorite genre.
// ○	movies: declare A list of maps containing movie titles and genres.

// 2.	Lists:
// ○	movies: A list is used to store movie data efficiently.

// 3.	Maps:
// ○	Each element in the movies list is a map with key-value pairs for title and genre.

// 4.	Loops:
// ○	A for loop iterates through the movies list to check each movie's genre.

// 5.	Conditions:
// ○	An if statement checks if the user's genre matches a movie's genre and recommends it.
// ○	An optional else if statement handles the case where the user enters "all" (you can add this for a more complete recommender).
// ○	An optional if statement after the loop checks for invalid genre input and provides a message.

import 'dart:io';

void main() {
  print("Enter a genre");
  String genre = stdin.readLineSync()!;
  List<Map<String, String>> movies = [
    {"title": "The Shawshank Redemption", "genre": "Drama"},
    {"title": "The Godfather", "genre": "Crime"},
    {"title": "The Dark Knight", "genre": "Action"},
    {"title": "Pulp Fiction", "genre": "Crime"},
    {
      "title": "The Lord of the Rings: The Return of the King",
      "genre": "Fantasy"
    },
  ];
  for (int i = 0; i < movies.length; i++) {
    if (genre == movies[i]["genre"]) {
      print("We recommend : ${movies[i]["title"]}");
    } else if (genre.toLowerCase() == "all") {
      print("We recommend : ${movies[i]["title"]}");
    }
  }
  if (!movies.any((movies) => movies["genre"] == genre)) {
    print("No movies found for $genre");
  }
}
