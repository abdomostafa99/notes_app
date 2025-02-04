import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/constants.dart';

class CustomAddNoteTextField extends StatelessWidget {
  const CustomAddNoteTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Title',
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Color ?? Colors.white, width: 1.5));
  }
}
