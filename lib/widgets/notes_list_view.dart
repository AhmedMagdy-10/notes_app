import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/NotesCubit/note_cubit.dart';
import 'package:notes/cubits/NotesCubit/notes_state.dart';
import 'package:notes/model/note_model.dart';

import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NotesState>(builder: (context, state) {
      List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes!;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: noteItem(
              note: notes[index],
            ),
          ),
        ),
      );
    });
  }
}
