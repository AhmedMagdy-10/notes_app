import 'package:flutter/material.dart';
import 'package:notes/widgets/notesView_body.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notesViewBody(),
    );
  }
}
