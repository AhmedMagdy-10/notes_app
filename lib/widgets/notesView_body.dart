import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_item.dart';

import 'custom_appBar.dart';

Widget notesViewBody() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          customAppBar(),
          const SizedBox(
            height: 20,
          ),
          noteItem(),
        ],
      ),
    );
