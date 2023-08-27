import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmationCodeForm extends StatelessWidget {
  final TextInputAction textInputAction;
  final TextEditingController codeController;
  const ConfirmationCodeForm({
    super.key,
    required this.textInputAction,
    required this.codeController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: TextFormField(
        controller: codeController,
        textInputAction: textInputAction,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade700,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
        maxLength: 1,
        keyboardType: TextInputType.phone,
      ),
    );
  }
}
