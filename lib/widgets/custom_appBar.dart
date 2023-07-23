import 'package:flutter/material.dart';

import 'Custom_icon.dart';

Widget customAppBar() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Notes ',
          style: TextStyle(fontSize: 25),
        ),
        customIcon(),
      ],
    );
