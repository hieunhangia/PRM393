import 'package:flutter/material.dart';

class Lab4Exercise2 extends StatefulWidget {
  final String title;

  const Lab4Exercise2({super.key, required this.title});

  @override
  State<Lab4Exercise2> createState() => _Lab4Exercise2State();
}

class _Lab4Exercise2State extends State<Lab4Exercise2> {
  double _rating = 50;
  bool _isActive = true;
  String? _genre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Rating (Slider)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Slider(
              value: _rating,
              min: 0,
              max: 100,
              activeColor: const Color(0xFF5B6195),
              onChanged: (value) {
                setState(() {
                  _rating = value;
                });
              },
            ),
            Text('Current value: ${_rating.round()}'),
            const SizedBox(height: 24),
            const Text(
              'Active (Switch)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Is movie active?'),
                Switch(
                  value: _isActive,
                  activeTrackColor: const Color(0xFF5B6195),
                  onChanged: (value) {
                    setState(() {
                      _isActive = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Genre (RadioListTile)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            RadioListTile<String>(
              title: const Text('Action'),
              value: 'Action',
              // ignore: deprecated_member_use
              groupValue: _genre,
              activeColor: const Color(0xFF5B6195),
              // ignore: deprecated_member_use
              onChanged: (value) {
                setState(() {
                  _genre = value;
                });
              },
              contentPadding: EdgeInsets.zero,
            ),
            RadioListTile<String>(
              title: const Text('Comedy'),
              value: 'Comedy',
              // ignore: deprecated_member_use
              groupValue: _genre,
              activeColor: const Color(0xFF5B6195),
              // ignore: deprecated_member_use
              onChanged: (value) {
                setState(() {
                  _genre = value;
                });
              },
              contentPadding: EdgeInsets.zero,
            ),
            Text('Selected genre: ${_genre ?? 'None'}'),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFF3F3F8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.grey.shade300),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () async {
                  await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                },
                child: const Text(
                  'Open Date Picker',
                  style: TextStyle(color: Color(0xFF5B6195)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
