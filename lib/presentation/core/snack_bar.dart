import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message, {bool status = false}) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: status ? Colors.green : Colors.red,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
