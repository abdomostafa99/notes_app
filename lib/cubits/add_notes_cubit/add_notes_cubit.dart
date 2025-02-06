import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_practice/models/note_model.dart';
import 'package:notes_app_practice/widgets/constants.dart';

part 'add_notes_states.dart';

class AddNotesCubit extends Cubit<AddNotesStates> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      AddNotesFaliure(e.toString());
    }
  }
}
