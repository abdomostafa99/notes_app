import 'package:bloc/bloc.dart';
import 'package:notes_app_practice/cubits/add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
}
