import 'package:flutter/material.dart';
import 'package:invotask/core/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch, // Ensures full-width children
      children: [
        ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Apply Filter',
            style: TextStyles.styleBold(context,
                fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
