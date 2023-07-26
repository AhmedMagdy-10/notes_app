import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/NotesCubit/note_cubit.dart';
import 'package:notes/widgets/notes_list_view.dart';

import 'custom_appBar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).getAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          customAppBar(title: 'Notes', icon: Icons.search),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
