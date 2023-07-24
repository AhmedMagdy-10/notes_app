import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_bottom.dart';
import 'package:notes/widgets/custom_text_field.dart';

Widget addBottomSheet() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            customTextField(
              hint: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            customTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 50,
            ),
            customBottom(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
