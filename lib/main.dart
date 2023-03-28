import 'package:flutter/material.dart';
import 'package:mykepolah/pages/forum_page.dart';
import 'package:mykepolah/pages/profile_page.dart';
import 'package:mykepolah/pages/progress_page.dart';
import 'package:mykepolah/pages/reports_page.dart';
import 'pages/home_page.dart';

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
        initialRoute: "/",
        routes: {
          '/': (context) => HomePage(),
          '/2': (context) => ForumPage(),
          '/3': (context) => ProfilePage(),
          '/4': (context) => ProgressPage(),
          '/5': (context) => ReportsPage(),
        });
  }
}
