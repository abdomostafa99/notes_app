import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_practice/cubits/add_notes_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_practice/models/note_model.dart';
import 'package:notes_app_practice/widgets/cutstom_textfield.dart';
import 'package:notes_app_practice/widgets/search_bar_row.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            SearchRowBar(
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.content = content ?? widget.noteModel.content;

                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              text: 'Edit Note',
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 40,
            ),
            CustomAddNoteTextField(
                onChanged: (value) {
                  title = value;
                },
                hintText: widget.noteModel.title),
            SizedBox(
              height: 20,
            ),
            CustomAddNoteTextField(
              onChanged: (value) {
                content = value;
              },
              hintText: widget.noteModel.content,
              maxLines: 8,
            )
          ],
        ),
      ),
    );
  }
}
