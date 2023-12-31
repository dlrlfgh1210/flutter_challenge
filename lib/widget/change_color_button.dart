import 'package:flutter/material.dart';

class ChangeColorButton extends StatelessWidget {
  final bool disabled;
  final double buttonSize;
  final String? buttonName;
  const ChangeColorButton({
    super.key,
    required this.disabled,
    required this.buttonName,
    required this.buttonSize,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: buttonSize,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: disabled ? Colors.grey.shade300 : Colors.blue.shade300,
        ),
        duration: const Duration(milliseconds: 500),
        child: Text(
          buttonName!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
