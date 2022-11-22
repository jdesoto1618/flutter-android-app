import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'How to: Nav',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Flutter Home!'),
        ),
        body: IconButton(
          icon: Hero(
            tag: 'hero image',
            child: Image.network(
                'https://previews.123rf.com/images/tethysimagingllc/tethysimagingllc1705/tethysimagingllc170500004/78066844-the-word-hero-from-a-typewriter-on-a-white-background.jpg'),
          ),
          iconSize: 75,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const AboutScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('About Page'),
      ),
      body: Hero(
        tag: 'hero image',
        child: Image.network(
            'https://previews.123rf.com/images/tethysimagingllc/tethysimagingllc1705/tethysimagingllc170500004/78066844-the-word-hero-from-a-typewriter-on-a-white-background.jpg'),
      ),
    );
  }
}
