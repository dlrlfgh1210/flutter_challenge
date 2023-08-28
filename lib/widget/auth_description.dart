import 'package:flutter/material.dart';

class AuthDescription extends StatelessWidget {
  final String authTitle, authDetail;
  const AuthDescription({
    super.key,
    required this.authTitle,
    required this.authDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          authTitle,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          authDetail,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
