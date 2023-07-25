import 'package:flutter/material.dart';
import 'package:notes/widgets/note_form.dart';

class addBottomSheet extends StatelessWidget {
  const addBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: addNoteForm(),
      ),
    );
  }
}
