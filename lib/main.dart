import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Hello from Flutter'),
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              color: Colors
                  .primaries[math.Random().nextInt(Colors.primaries.length)],
              width: 500,
              height: 500,
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('pressed button!');
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ]),
      ),
    );
  }
}
