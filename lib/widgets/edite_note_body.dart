import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/NotesCubit/note_cubit.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/widgets/custom_appBar.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? titel, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          customAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = titel ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NoteCubit>(context).getAllNotes();
            },
          ),
          const SizedBox(
            height: 50,
          ),
          customTextField(
            hint: widget.note.title,
            onChange: (value) {
              titel = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          customTextField(
            hint: widget.note.subTitle,
            maxLines: 5,
            onChange: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
