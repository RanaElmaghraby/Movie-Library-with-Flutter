# 🎬 Movie Library with Flutter

A Flutter application for browsing a movie collection with an interactive user interface, movie search, reusable widgets, and switchable grid and list layouts.

## 🎥 Demo Video

Watch the application in action:

**[▶ Watch Movie Library Demo](https://drive.google.com/file/d/1fB7dGAjr2dpfQPdRzaJPpqf673hGRlO0/view?usp=sharing)**

## ✨ Features

- 🔍 **Movie Search:** Search for movies by title or genre using case-insensitive matching.
- 🗂️ **Grid & List Views:** Switch between grid and list layouts.
- 🎞️ **Movie Cards:** Display movie posters, titles, genres, release years, and ratings.
- 🏷️ **Interactive Discount:** Tap a movie card to toggle the displayed discount percentage.
- 🖼️ **Movie Posters:** Display movie poster assets.
- 🚫 **Empty Search State:** Display a message when no movies match the search query.
- ♻️ **Reusable Widgets:** Use a custom `MovieCard` widget to organize and reuse UI components.

## 🛠️ Built With

- **Flutter** — UI framework
- **Dart** — Programming language
- **Material Design** — UI components and styling
- **Git & GitHub** — Version control

## 📂 Project Structure

```text
Movie-Library-with-Flutter/
├── assets/
│   └── posters/
├── lib/
│   ├── main.dart
│   ├── home_page.dart
│   ├── movie.dart
│   └── movie_card.dart
├── screenshots/
│   ├── list_view.png
│   └── grid_view_search.png
├── pubspec.yaml
├── pubspec.lock
├── analysis_options.yaml
└── README.md
```

## 🧩 Widget Architecture

The application is organized into reusable Flutter widgets.

```text
MyApp
└── MaterialApp
    └── HomePage
        └── Scaffold
            ├── AppBar
            │   ├── App Title
            │   ├── Search Field
            │   └── View Toggle Button
            └── Body
                ├── GridView.builder
                │   └── MovieCard
                │       ├── Movie Poster
                │       ├── Movie Information
                │       ├── Rating
                │       └── Discount Badge
                └── ListView.builder
                    └── MovieCard
                        ├── Movie Poster
                        ├── Movie Information
                        ├── Rating
                        └── Discount Badge
```

### Key Widgets and Components

| Widget / Component | Responsibility |
|---|---|
| `MaterialApp` | Configures the main application. |
| `Scaffold` | Provides the main page structure. |
| `AppBar` | Displays the application title and controls. |
| `TextField` | Accepts the user's search query. |
| `IconButton` | Toggles between grid and list views. |
| `GridView.builder` | Displays movies in a grid layout. |
| `ListView.builder` | Displays movies in a vertical list. |
| `MovieCard` | Reusable widget for displaying movie details. |
| `Image` | Displays the movie poster. |
| `Text` | Displays the movie title, genre, and release year. |
| `setState()` | Refreshes the UI when relevant state changes. |

## 🧠 Concepts Practiced

This project demonstrates practical Flutter and Dart concepts:

- Widget composition and reusable UI components.
- `StatelessWidget` and `StatefulWidget`.
- State management using `setState()`.
- Handling user input with `TextField`.
- Filtering collections using Dart's `where()` method.
- Case-insensitive string matching.
- Dynamic layouts using `GridView.builder` and `ListView.builder`.
- Passing data and callbacks between widgets.
- Displaying local image assets.
- Handling empty search results.
