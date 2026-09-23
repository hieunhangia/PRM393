import 'package:flutter/material.dart';

class Lab4Exercise4 extends StatefulWidget {
  final String title;

  const Lab4Exercise4({super.key, required this.title});

  @override
  State<Lab4Exercise4> createState() => _Lab4Exercise4State();
}

class _Lab4Exercise4State extends State<Lab4Exercise4> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _isDark ? ThemeData.dark() : ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color(0xFFF9F9FB),
      ),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                widget.title,
                style: TextStyle(color: _isDark ? Colors.white : Colors.black87),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: _isDark ? Colors.white : Colors.black87),
              actions: [
                Row(
                  children: [
                    Text(
                      'Dark',
                      style: TextStyle(color: _isDark ? Colors.white : Colors.black54),
                    ),
                    Switch(
                      value: _isDark,
                      activeTrackColor: Colors.grey.shade400,
                      onChanged: (val) {
                        setState(() {
                          _isDark = val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            body: Center(
              child: Text(
                'This is a simple screen with theme toggle.',
                style: TextStyle(color: _isDark ? Colors.white : Colors.black87),
              ),
            ),
          );
        }
      ),
    );
  }
}
