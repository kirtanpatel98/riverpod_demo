import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/new.dart';

void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RiverpodDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RiverpodDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NewPage();
  }
}
