import 'package:flutter/material.dart';
import 'package:pastry_app/pages/getstarted.dart';

void main() {
  runApp(PastryApp());
}

class PastryApp extends StatefulWidget {
  PastryApp({Key? key}) : super(key: key);

  @override
  State<PastryApp> createState() => _PastryAppState();
}

class _PastryAppState extends State<PastryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pastry App",
      home: GetStartedPage(),
    );
  }
}
