import 'package:flutter/material.dart';
import 'package:mykepolah/pages/forum_page.dart';
import 'package:mykepolah/pages/profile_page.dart';
import './pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/3",
        routes: {
          '/': (context) => HomePage(),
          '/2': (context) => ForumPage(),
          '/3': (context) => ProfilePage(),
        });
  }
}
