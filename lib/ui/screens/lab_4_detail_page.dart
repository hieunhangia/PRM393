import 'package:flutter/material.dart';

class Lab4DetailPage extends StatelessWidget {
  final String title;

  const Lab4DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Flutter UI',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            const Center(
              child: Icon(Icons.movie, size: 80, color: Colors.blue),
            ),
            const SizedBox(height: 40),
            ClipRRect(
              child: Image.network(
                'https://images.unsplash.com/photo-1542281286-9e0a16bb7366',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    color: Colors.grey[300],
                    alignment: Alignment.center,
                    child: const Text('Image loading error'),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Card(
              color: const Color(0xFFF3F3F8),
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.grey.shade300, width: 1),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  leading: Icon(Icons.star, color: Color(0xFF4A4A5F), size: 28),
                  title: Text(
                    'Movie Item',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  subtitle: Text(
                    'This is a sample ListTile inside a Card.',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
