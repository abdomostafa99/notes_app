import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_practice/cubits/add_notes_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_practice/widgets/notes_listview_builder.dart';
import 'package:notes_app_practice/widgets/search_bar_row.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
