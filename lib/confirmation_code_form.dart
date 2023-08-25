import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmationCodeForm extends StatelessWidget {
  final TextInputAction textInputAction;
  const ConfirmationCodeForm({
    super.key,
    required this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: TextFormField(
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
