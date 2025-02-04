import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/note_card_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: NoteCardtem(),
              );
            }),
      ),
    );
  }
}
