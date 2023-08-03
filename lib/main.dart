import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final logger = Logger(
    printer: PrettyPrinter(
        methodCount: 2, // Number of method calls to be displayed
        errorMethodCount: 8, // Number of method calls if stacktrace is provided
        lineLength: 120, // Width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ),
  );

  void playNote(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildNote({@required color, @required noteNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(50, 30),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft),
        onPressed: () {
          playNote(noteNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

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
              buildNote(color: const Color(0xFF8D51D8), noteNumber: 1),
              buildNote(color: const Color(0xFF527DDA), noteNumber: 2),
              buildNote(color: const Color(0xFFC0E2FB), noteNumber: 3),
              buildNote(color: const Color(0xFF80CE86), noteNumber: 4),
              buildNote(color: const Color(0xFFFFFE63), noteNumber: 5),
              buildNote(color: const Color(0xFFFF9D51), noteNumber: 6),
              buildNote(color: const Color(0xFFFF434B), noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
