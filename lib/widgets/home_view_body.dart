import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/notes_listview_builder.dart';
import 'package:notes_app_practice/widgets/search_button_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Text(
                'Notes',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              SearchButtonWidget()
            ],
          ),
          NotesListViewBuilder()
        ],
      ),
    );
  }
}
