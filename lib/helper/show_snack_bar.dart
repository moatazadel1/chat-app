import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: Colors.black,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.fixed,
    ),
  );
}
