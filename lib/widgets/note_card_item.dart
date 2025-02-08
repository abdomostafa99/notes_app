import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_practice/cubits/add_notes_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_practice/models/note_model.dart';
import 'package:notes_app_practice/widgets/edit_note_view.dart';

class NoteCardItem extends StatelessWidget {
  const NoteCardItem({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(noteModel.color)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  noteModel.subTitle,
                  style: TextStyle(color: Colors.black.withValues(alpha: 0.7)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();

                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 27,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                noteModel.date,
                style: TextStyle(color: Colors.black.withValues(alpha: 0.7)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
