import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      home: const HomEscreen(),
    );
  }
}

class HomEscreen extends StatelessWidget {
  const HomEscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return Text('text $index');
            },
            separatorBuilder: (ctx, index) {
              return const Divider();
            },
            itemCount: 50),
      ),
    );
  }
}
