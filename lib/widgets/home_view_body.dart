import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/notes_listview_builder.dart';
import 'package:notes_app_practice/widgets/search_bar_row.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: const [
          SizedBox(
            height: 70,
          ),
          SearchRowBar(text: 'Notes', icon: Icon(Icons.search)),
          Expanded(child: NotesListViewBuilder()),
        ],
      ),
    );
  }
}
