import 'package:flutter/material.dart';
import 'package:notes_app_practice/views/home_view.dart';

void main() {
  runApp(const NotesAppPractice());
}

class NotesAppPractice extends StatelessWidget {
  const NotesAppPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: HomeView());
  }
}
