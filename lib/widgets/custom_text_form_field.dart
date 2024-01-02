import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key, this.hintText, this.onChanged, this.obscureText = false});
  Function(String)? onChanged;
  String? hintText;

  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
