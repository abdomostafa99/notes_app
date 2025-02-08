import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_practice/cubits/add_notes_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_practice/models/note_model.dart';
import 'package:notes_app_practice/widgets/note_card_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: NoteCardItem(),
                );
              }),
        );
      },
    );
  }
}
