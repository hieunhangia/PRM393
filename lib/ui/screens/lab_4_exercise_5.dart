import 'package:flutter/material.dart';

class Lab4Exercise5 extends StatelessWidget {
  final String title;

  const Lab4Exercise5({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = ['Movie A', 'Movie B', 'Movie C', 'Movie D'];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Correct ListView inside Column using Expanded',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.separated(
                itemCount: movies.length,
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      const Icon(
                        Icons.movie, // You can use movie_creation as well
                        color: Color(0xFF4A4A5F),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        movies[index],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
