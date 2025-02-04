import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/cutstom_textfield.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomAddNoteTextField()
        ],
      ),
    );
  }
}
