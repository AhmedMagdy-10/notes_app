import 'package:flutter/material.dart';
import 'package:notes/widgets/model_bottom_sheet.dart';
import 'package:notes/widgets/notesView_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) => addBottomSheet());
        },
        child: const Icon(Icons.add),
      ),
      body: notesViewBody(),
    );
  }
}
