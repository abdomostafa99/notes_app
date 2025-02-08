import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_practice/cubits/add_notes_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_practice/widgets/add_note_botton_sheet.dart';
import 'package:notes_app_practice/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteButtonSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
