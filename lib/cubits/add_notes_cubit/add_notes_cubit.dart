import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_practice/models/note_model.dart';

part 'add_notes_states.dart';

class AddNotesCubit extends Cubit {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) {}
}
