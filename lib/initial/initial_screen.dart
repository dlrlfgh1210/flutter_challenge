import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/create_account/create_account_screen.dart';
import 'package:nomad_flutter_challenge/widget/initial_container.dart';
import 'package:nomad_flutter_challenge/initial/initial_warning.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  void onCreateTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CreateAccountScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                FontAwesomeIcons.twitter,
                size: 50,
                color: Colors.blue.shade400,
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                "See what's happening \nin the world right now.",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              const InitialContainer(
                icon: FaIcon(FontAwesomeIcons.google),
                method: "Continue with Google",
                bgColor: Colors.white,
                methodColor: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              const InitialContainer(
                icon: FaIcon(FontAwesomeIcons.apple),
                method: "Continue with Apple",
                bgColor: Colors.white,
                methodColor: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 500,
                child: Divider(
                  color: Colors.black26,
                  thickness: 2.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => onCreateTap(context),
                child: const InitialContainer(
                  method: "Create account",
                  bgColor: Colors.black,
                  methodColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const InitialWarning(),
              const SizedBox(
                height: 80,
              ),
              EasyRichText(
                "Have an account already?  Log in",
                defaultStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                patternList: [
                  EasyRichTextPattern(
                    targetString: "Log in",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.blue.shade500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
