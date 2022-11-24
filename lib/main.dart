// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your favorite sports teams',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      )),
      home: const RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  final _pens = Image.asset('penguins.jpeg');
  final _bears = Image.asset('bears.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your favorite sports teams'),
      ),
      body: Center(
        child: Column(
          children: [
            _pens,
            const Text('Pittsburgh Penguins'),
            _bears,
            const Text('Chicago Bears')
          ],
        ),
      ),
/*         body: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemBuilder: (context, i) {
            if (i.isOdd) return const Divider();

            final index = i ~/ 2;
            if (index >= _suggestions.length) {
              _suggestions.addAll(generateWordPairs().take(10));
            }
            return _pens;
          },
        ) */
    );
  }
}
