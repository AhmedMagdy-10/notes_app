import 'package:flutter/material.dart';

import 'Custom_icon.dart';

Widget customAppBar(
        {required String title,
        required IconData icon,
        void Function()? onPressed}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 25),
        ),
        customIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
