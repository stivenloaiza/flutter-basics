import 'package:flutter/material.dart';
import 'package:untitled/views/dashboard.dart';
import 'package:untitled/views/detail_card.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gates',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/dashboard',
      routes: <String, WidgetBuilder> {
        '/detail': (BuildContext context) => const DetailCard(),
        '/dashboard': (BuildContext context) => const Dashboard(),
      },
    );
  }
}
