import 'package:flutter/material.dart';

Widget customIcon({
  required IconData icon,
}) =>
    Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.04),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 25,
        ),
      ),
    );
