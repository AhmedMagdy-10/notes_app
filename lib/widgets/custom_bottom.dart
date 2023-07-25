import 'package:flutter/material.dart';
import 'package:notes/constants/constants.dart';

// ignore: must_be_immutable
class customBottom extends StatelessWidget {
  const customBottom(
      {super.key, this.text, this.onTap, this.isloading = false});
  final String? text;
  final bool? isloading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: isloading!
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : const Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
