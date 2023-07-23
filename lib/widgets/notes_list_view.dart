import 'package:flutter/material.dart';

import 'notes_item.dart';

Widget notesListView() => Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: noteItem(),
        ),
      ),
    );
