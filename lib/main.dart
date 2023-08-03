import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xFF8D51D8),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFF8D51D8),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFF527DDA),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFC0E2FB),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFF80CE86),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFFFFE63),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFFF9D51),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFFF434B),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
