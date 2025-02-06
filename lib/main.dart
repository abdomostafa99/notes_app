import 'package:flutter/material.dart';
import 'package:notes_app_practice/models/note_model.dart';
import 'package:notes_app_practice/views/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_practice/widgets/constants.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
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
