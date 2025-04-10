import 'package:creartify/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';

class CommonUnderlineTextButton extends StatelessWidget {
  const CommonUnderlineTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textStyle,
  });

  final String text;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        text,
        style: textStyle ??
            context.typography.bodySmall?.copyWith(
              color: context.colors.primary,
              decoration: TextDecoration.underline,
              decorationColor: context.colors.primary,
            ),
      ),
    );
  }
}
