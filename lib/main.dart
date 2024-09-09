import 'package:book_nest/models/book_provider.dart';
import 'package:book_nest/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookProvider()),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
