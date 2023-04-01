import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DefaultButton extends StatelessWidget {
final VoidCallback onPressed;
final Widget child;
final Color color;
final Color textColor;

  const DefaultButton({super.key, required this.onPressed, required this.color, required this.textColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(color: textColor))
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}