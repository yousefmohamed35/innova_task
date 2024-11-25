import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(8)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
        hintStyle: TextStyles.styleSemiBold(context,
            fontSize: 14, color: Color(0xff474747)),
      ),
    );
  }
}
