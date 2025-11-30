import 'package:flutter/material.dart';

class Suggestion extends StatefulWidget {
  const Suggestion({super.key});

  @override
  State<Suggestion> createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(//Padding加外邊距
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.grey,
        alignment: Alignment.center,
        height: 240,
        child: const Text("推薦", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
