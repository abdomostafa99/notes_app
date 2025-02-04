import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/add_note_botton_sheet.dart';
import 'package:notes_app_practice/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteButtonSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: HomeViewBody(),
    );
  }
}
