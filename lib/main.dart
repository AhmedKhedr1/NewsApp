import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/home_screen.dart';
import 'package:news_app/widgets/News_Service.dart';

void main() {
  runApp(const MyApp());
  NewsService(Dio()).getnews();
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_screen(),
    );
  }
}
