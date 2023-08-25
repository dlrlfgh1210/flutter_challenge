import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/auth_description.dart';
import 'package:nomad_flutter_challenge/change_color_button.dart';
import 'package:nomad_flutter_challenge/confirmation_code_form.dart';
import 'package:nomad_flutter_challenge/password_screen.dart';

class ConfirmationCodeScreen extends StatefulWidget {
  const ConfirmationCodeScreen({super.key});

  @override
  State<ConfirmationCodeScreen> createState() => _ConfirmationCodeScreenState();
}

class _ConfirmationCodeScreenState extends State<ConfirmationCodeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> formData = {};

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PasswordScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.blue.shade400,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const AuthDescription(
                authTitle: "We sent you a code",
                authDetail: "Enter it below to verify",
              ),
              const Row(
                children: [
                  ConfirmationCodeForm(
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ConfirmationCodeForm(
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ConfirmationCodeForm(
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ConfirmationCodeForm(
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ConfirmationCodeForm(
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ConfirmationCodeForm(
                    textInputAction: TextInputAction.done,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: FaIcon(
                  FontAwesomeIcons.circleCheck,
                  color: Colors.green.shade300,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: _onSubmitTap,
                child: const ChangeColorButton(
                  disabled: false,
                  buttonName: "Next",
                  buttonSize: 0.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
