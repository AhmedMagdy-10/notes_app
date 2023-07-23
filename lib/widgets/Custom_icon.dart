import 'package:flutter/material.dart';

Widget customIcon() => Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.04),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 25,
        ),
      ),
    );
