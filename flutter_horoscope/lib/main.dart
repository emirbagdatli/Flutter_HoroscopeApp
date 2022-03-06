// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_horoscope/horoscope_list.dart';

void main() {
  runApp(HoroscopeApp());
}

class HoroscopeApp extends StatelessWidget {
  const HoroscopeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HoroscopeList(),
    );
  }
}
