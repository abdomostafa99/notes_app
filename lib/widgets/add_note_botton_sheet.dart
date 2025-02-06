import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_practice/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_practice/widgets/add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
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
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
