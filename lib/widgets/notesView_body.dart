import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_list_view.dart';

import 'custom_appBar.dart';

Widget notesViewBody() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          customAppBar(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: notesListView(),
          ),
        ],
      ),
    );
