import 'package:flutter/material.dart';

Widget customIcon({
  required IconData icon,
  final void Function()? onPressed,
}) =>
    Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.04),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: 28,
          ),
          onPressed: onPressed,
        ),
      ),
    );
