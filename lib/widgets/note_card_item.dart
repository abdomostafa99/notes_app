import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/edit_note_view.dart';

class NoteCardItem extends StatelessWidget {
  const NoteCardItem({
    super.key,
  });

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
            borderRadius: BorderRadius.circular(16), color: Colors.amber),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Build your carrer with abdulhman mostafa',
                  style: TextStyle(color: Colors.black.withValues(alpha: 0.7)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 27,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                'May 22 , 2025 ',
                style: TextStyle(color: Colors.black.withValues(alpha: 0.7)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
