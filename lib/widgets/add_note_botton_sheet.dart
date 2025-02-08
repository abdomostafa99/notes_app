import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app_practice/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_practice/cubits/add_notes_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_practice/widgets/add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNotesCubit, AddNotesStates>(
          listener: (context, state) {
            if (state is AddNotesFaliure) {
              debugPrint('Failed ${state.errMessage}');
            }
            if (state is AddNotesSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddNotesLoading ? true : false,
                child: SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
