import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/follow_screen.dart';
import 'package:instagram_clone/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        FollowPage.id: (context) => const FollowPage(),
      },
    );
  }
}
