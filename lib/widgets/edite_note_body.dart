import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_appBar.dart';

Widget editNoteBody() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          customAppBar(title: 'Edit Note', icon: Icons.check),
        ],
      ),
    );
