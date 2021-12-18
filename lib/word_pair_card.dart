import 'package:flutter/material.dart';

class WordPairCard extends StatelessWidget {
  final String value;
  const WordPairCard({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(value),
        ));
  }
}
