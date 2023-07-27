import 'package:flutter/material.dart';
import 'package:notes/model/note_model.dart';

import '../widgets/edite_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        note: note,
      ),
    );
  }
}
