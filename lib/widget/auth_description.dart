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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            authTitle,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            authDetail,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
