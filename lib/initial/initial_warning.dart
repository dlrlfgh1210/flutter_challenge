import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class InitialWarning extends StatelessWidget {
  const InitialWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyRichText(
      "By signing up, you agree to our Terms, \nPrivacy Policy, and Cookie Use.",
      defaultStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
      patternList: [
        EasyRichTextPattern(
          targetString: 'Terms',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.blue.shade500,
          ),
        ),
        EasyRichTextPattern(
          targetString: 'Privacy Policy',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.blue.shade500,
          ),
        ),
        EasyRichTextPattern(
          targetString: 'Cookie Use',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.blue.shade500,
          ),
        ),
      ],
      textAlign: TextAlign.center,
    );
  }
}
