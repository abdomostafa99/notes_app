import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app_practice/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_practice/widgets/add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: BlocConsumer<AddNotesCubit, AddNotesStates>(
          listener: (context, state) {
            if (state is AddNotesFaliure) {
              print('Failed ${state.errMessage}');
            }
            if (state is AddNotesSuccess) {
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
