import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/cutstom_textfield.dart';
import 'package:notes_app_practice/widgets/search_bar_row.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            SearchRowBar(
              text: 'Edit Notes',
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 40,
            ),
            CustomAddNoteTextField(hintText: 'Edit Note'),
            SizedBox(
              height: 20,
            ),
            CustomAddNoteTextField(
              hintText: 'Content',
              maxLines: 8,
            )
          ],
        ),
      ),
    );
  }
}
