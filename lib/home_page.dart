import 'package:flutter/material.dart';

import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchQuery = '';
  bool isGridView = true;

  // Bonus: shared discount for all movie cards
  int discountPercent = 10;

  @override
  Widget build(BuildContext context) {
    final filteredMovies = movies.where((movie) {
      return movie.title.toLowerCase().contains(
                searchQuery.toLowerCase(),
              ) ||
          movie.genre.toLowerCase().contains(
                searchQuery.toLowerCase(),
              );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Movie Library' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 20)),
        backgroundColor: Color.fromARGB(255, 255, 231, 209),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isGridView = !isGridView;
              });
            },
            icon: Icon(
              isGridView ? Icons.list : Icons.grid_view,
            ),
            tooltip: isGridView ? 'List View' : 'Grid View',
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search movies by title or genre...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: filteredMovies.isEmpty
                  ? const Center(
                      child: Text(
                        'No movies found',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  : isGridView
                      ? GridView.builder(
                          itemCount: filteredMovies.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.7,
                          ),
                          itemBuilder: (context, index) {
                            return MovieCard(
                              movie: filteredMovies[index],
                              discountPercent: discountPercent,
                              onTap: () {
                                setState(() {
                                  discountPercent =
                                      discountPercent == 10 ? 20 : 10;
                                });
                              },
                            );
                          },
                        )
                      : ListView.builder(
                          itemCount: filteredMovies.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 12,
                                ),
                                child: MovieCard(
                                  movie: filteredMovies[index],
                                  discountPercent: discountPercent,
                                  onTap: () {
                                    setState(() {
                                      discountPercent =
                                          discountPercent == 10 ? 20 : 10;
                                    });
                                  },
                                ),
                              ),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
