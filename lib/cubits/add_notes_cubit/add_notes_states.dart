part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesStates {}

class AddNotesInitial extends AddNotesStates {}

class AddNotesLoading extends AddNotesStates {}

class AddNotesSuccess extends AddNotesStates {}

class AddNotesFaliure extends AddNotesStates {
  final String errMessage;

  AddNotesFaliure(this.errMessage);
}
