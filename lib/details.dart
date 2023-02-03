import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  final int index;

  const MyWidget({super.key, required this.index});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page')),
      body: Center(child: Text('Meetups details ')),
    );
  }
}
