import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_practice/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_practice/models/note_model.dart';
import 'package:notes_app_practice/simple_bloc_observer.dart';
import 'package:notes_app_practice/views/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_practice/widgets/constants.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesAppPractice());
}

class NotesAppPractice extends StatelessWidget {
  const NotesAppPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNotesCubit())],
      child: MaterialApp(
          theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
          debugShowCheckedModeBanner: false,
          home: HomeView()),
    );
  }
}
