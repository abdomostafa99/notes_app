import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/note_card_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: NoteCardtem(),
            );
          }),
    );
  }
}
