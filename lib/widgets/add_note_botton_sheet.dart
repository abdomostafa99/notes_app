import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/custom_button.dart';
import 'package:notes_app_practice/widgets/cutstom_textfield.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomAddNoteTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 24,
            ),
            CustomAddNoteTextField(
              hintText: 'Content',
              maxLines: 8,
            ),
            SizedBox(
              height: 40,
            ),
            CustomAddButton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
