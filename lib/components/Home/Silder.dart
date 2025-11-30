import 'package:flutter/material.dart';

class Silder extends StatefulWidget {
  const Silder({super.key});

  @override
  State<Silder> createState() => _SilderState();
}

class _SilderState extends State<Silder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      color: Colors.grey,
      alignment: Alignment.center,
      child: const Text("輪播圖",style: TextStyle(fontSize: 20,color: Colors.white),),
    );
  }
}
