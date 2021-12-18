import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:words_pair/word_pair_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> words = [];
  @override
  initState() {
   super.initState();
   words.addAll(generateWordPairs().take(5).map((e) => e.asPascalCase));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HACXMAS'),
      ),
      body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index) {
            return WordPairCard(value: words[index],);
          }),
    );
  }
}
