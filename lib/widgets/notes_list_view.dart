import 'package:flutter/material.dart';

import 'notes_item.dart';

Widget notesListView() => ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: noteItem(),
      ),
    );
