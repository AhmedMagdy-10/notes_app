import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_appBar.dart';
import 'package:notes/widgets/custom_text_field.dart';

Widget editNoteBody() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          customAppBar(title: 'Edit Note', icon: Icons.check),
          const SizedBox(
            height: 50,
          ),
          customTextField(hint: 'Titel'),
          const SizedBox(
            height: 16,
          ),
          customTextField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
