import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: 'Test Project',
        hintStyle: TextStyles.styleSemiBold(
          context,
          fontSize: 10,
          color: Colors.black,
        ),
        prefixIcon: Icon(Icons.search, size: 20, color: Colors.black),
        suffixIcon: InkWell(
          onTap: onTap,
          child: Icon(
            Icons.close,
            size: 20,
            color: Colors.black,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
