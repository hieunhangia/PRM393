import 'package:flutter/material.dart';

class Lab4Exercise3 extends StatelessWidget {
  final String title;

  const Lab4Exercise3({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movies = [
      {'title': 'Avatar', 'desc': 'Sample description'},
      {'title': 'Inception', 'desc': 'Sample description'},
      {'title': 'Interstellar', 'desc': 'Sample description'},
      {'title': 'Joker', 'desc': 'Sample description'},
    ];

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
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Now Playing',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: movies.length,
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  final initial = movie['title']!.substring(0, 1);
                  return Card(
                    color: const Color(0xFFF3F3F8),
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.grey.shade300, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: const Color(0xFFE2E4FA),
                          foregroundColor: const Color(0xFF2B315A),
                          child: Text(initial),
                        ),
                        title: Text(
                          movie['title']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          movie['desc']!,
                          style: const TextStyle(color: Colors.black54),
                        ),
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
